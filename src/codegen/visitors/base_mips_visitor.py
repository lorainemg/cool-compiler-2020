from codegen.cil_ast import *
from codegen.tools import *
from semantic.tools import VariableInfo
from typing import List

class BaseCILToMIPSVisitor:
    def __init__(self):
        self.code: list = []
        self.initialize_data_code()
        self.initialize_type_code()
        
        self.symbol_table = SymbolTable()
        # temp registers: t8, t9, voy a usarlos para llevarlos de 
        # Not sure if i should only use local registers
        self.local_reg = RegisterDescriptor(local_reg_list)
        self.global_reg = RegisterDescriptor(global_reg_list)
        self.reg_desc = RegisterDescriptor()
        self.addr_desc = AddressDescriptor()
        self.strings = {}


    def initialize_data_code(self):
        self.data_code = ['.data'] 
    

    def initialize_type_code(self):
        self.type_code = []


    def get_basic_blocks(self, instructions: List[InstructionNode]):
        leaders = self.find_leaders(instructions)
        blocks = [instructions[leaders[i-1]:leaders[i]] for i in range(1, len(leaders))]
        return blocks


    def find_leaders(self, instructions: List[InstructionNode]):
        "Returns the positions in the block that are leaders"
        leaders = {0, len(instructions)}
        for i, inst in enumerate(instructions):
            if isinstance(inst, GotoNode) or isinstance(inst, GotoIfNode) or isinstance(inst, ReturnNode) \
                or isinstance(inst, StaticCallNode) or isinstance(inst, DynamicCallNode):
                leaders.add(i+1)
            elif isinstance(inst, LabelNode) or isinstance(inst, FunctionNode):
                leaders.add(i)
        return sorted(list(leaders))


    def is_variable(self, expr):
        if expr is None:
            return False
        try:
            int(expr)
            return False
        except:
            return True

    def construct_next_use(self, basic_blocks: List[List[InstructionNode]]):
        next_use = {}
        for basic_block in basic_blocks:
            #Flush Symbol table's nextuse islive information
            for x in self.symbol_table:
                self.symbol_table[x].is_live = False
                self.symbol_table[x].next_use = None

            for inst in reversed(basic_block):
                in1 = inst.in1 if self.is_variable(inst.in1) else None
                in2 = inst.in2 if self.is_variable(inst.in2) else None
                out = inst.out if self.is_variable(inst.out) else None
        
                in1nextuse = None
                in2nextuse = None
                outnextuse = None
                in1islive = False
                in2islive = False
                outislive = False

                entry_in1 = self.symbol_table.lookup(in1)
                entry_in2 = self.symbol_table.lookup(in2)
                entry_out = self.symbol_table.lookup(out)
                if out is not None:
                    if entry_out is not None:
                        outnextuse = entry_out.next_use
                        outislive = entry_out.is_live
                    else:
                        scope = Scope.GLOBAL if isinstance(inst, SetAttribNode) else Scope.LOCAL
                        # TODO: Calcular el tamaño cuando es un AllocateNode
                        entry_out = SymbolTabEntry(out, scope=scope)
                    entry_out.next_use = None
                    entry_out.is_live = False
                    self.symbol_table.insert(entry_out)
                if in1 is not None:
                    if entry_in1 is not None:
                        in1nextuse = entry_in1.nextUse
                        in1islive = entry_in1.isLive
                    else:
                        scope = Scope.GLOBAL if isinstance(inst, GetAttribNode) else Scope.LOCAL
                        entry_in1 = SymbolTabEntry(out, scope=scope)
                    entry_in1.next_use = inst.index
                    entry_in1.is_live = True
                    self.symbol_table.insert(entry_in1)
                if in2 is not None:
                    if entry_in2 is not None:
                        in2nextuse = entry_in2.next_use
                        in2islive = entry_in2.is_live
                    else:
                        entry_in2 = SymbolTabEntry(in2)
                    entry_in2.next_use = inst.index
                    entry_in2.is_live = True
                    self.symbol_table.insert(entry_in2)

                n_entry = NextUseEntry(in1, in2, out, in1nextuse, in2nextuse, outnextuse, in1islive, in2islive, outislive)
                next_use[inst.index] = n_entry
        return next_use

    def get_reg(self, inst: InstructionNode, reg_desc: RegisterDescriptor):
        rest_block = self.block[inst.idx-block[0].idx:]  # return the block of instructions after the current instruction
        get_reg_var(inst.in1, reg_desc, rest_block) if is_variable(inst.in1) else None
        get_reg_var(inst.in2, reg_desc, rest_block) if is_variable(inst.in2) else None
        
        # Comprobar si se puede usar uno de estos registros tambien para el destino
        nu_entry = self.next_use[inst.idx]
        if nu_entry.in1islive and nu_entry.in1nextuse < inst.idx:
            update_register(inst.out, in1_reg)
            return  
        if nu_entry.in2islive and nu_entry.in2nextuse < inst.idx:
            update_register(inst.out, in2_reg)
            return 
        # Si no buscar un registro para z por el otro procedimiento
        get_reg_var(inst.out, reg_desc, rest_block) if is_variable(inst.out) else None
        

    def get_reg_var(self, var, reg_desc: RegisterDescriptor):
        curr_inst = self.block[0]
        register = self.addr_desc.get_var_reg(var)
        if register is not None:   # ya la variable está en un registro
            return 

        var_st = self.symbol_table.lookup(var)
        register = reg_desc.find_empty_reg()
        if register is not None:
            update_register(var, register, reg_desc)
            self.code.append(self.save_var_code(var))
            return 

        # Choose a register that requires the minimal number of load and store instructions
        score = {}          # keeps the score of each variable (the amount of times a variable in a register is used) 
        for inst in self.block[1:]:
            inst: InstructionNode
            if inst.in1 and inst.in1 != curr_inst.in1 and curr_inst.in2 != inst.in1 and curr_inst.out != inst.in1:
                _update_score(score, inst.in1) 
            if inst.in2 and inst.in2 != curr_inst.in1 and curr_inst.in2 != inst.in2 and curr_inst.out != inst.in2:
                _update_score(score, inst.in2)
            if inst.out and inst.out != curr_inst.in1 and inst.out != curr_inst.in2 and inst.out != curr_inst.out:
                _update_score(score, inst.out)
        # Chooses the one that is used less
        n_var = min(score, key=lambda x: score[x])
    
        register, memory, _ = self.addr_desc.get_var_storage(n_var)

        update_register(var, register, reg_desc)
        self.load_var_code(var)


    def _update_score(self, score, var):
        if self.addr_desc.get_var_reg(var) is None:
            return
        try:
            score[var]+= 1
        except:
            score[var] = 1

    def update_register(self, var, register, reg_desc: RegisterDescriptor):
        content = reg_desc.get_content(register)
        if content is not None:
            self.save_var_code(content)
            self.addr_desc.set_var_reg(content, None)
        reg_desc.insert_register(register, var)
        self.addr_desc.set_var_reg(var, register)

    def save_var_code(self, var):
        "Code to save a variable to memory"
        var_st = self.symbol_table.lookup(var)
        register, memory, _= self.addr_desc.get_var_storage(var)
        if var_st.scope == Scope.LOCAL:
            self.code.append(f"sw ${register}, -{memory}($fp)")
        else:
            self.code.append(f"sw ${register}, {memory}")

    def load_var_code(self, var):
        "Code to load a variable from memory"
        var_st = self.symbol_table.lookup(var)
        register, memory, _ = self.addr_desc.get_var_storage(var)
        if var_st.scope == Scope.LOCAL:
            self.code.append(f'lw ${register}, -{memory}(fp)')
        else:
            self.code.append(f'lw ${register}, {mem_addr}')

    def load_used_reg(self, registers):
        "Loads the used variables in there registers"
        for reg in used_reg:
            self.code.append('addiu $sp, $sp, 4')
            self.code.append(f'lw ${reg}, ($sp)')

    def empty_registers(sef):
        "Empty all used registers and saves there values to memory"
        registers = self.reg_desc.used_registers()
        for reg, var in registers: 
            self.save_var_code(var)
            self.addr_desc.set_var_reg(content, None)
            self.reg_desc.insert_register(reg, None)     

    def push_register(self, register):
        "Pushes the register to the stack"
        self.code.append('addiu $sp, $sp, -4')
        self.code.append(f'sw ${register}, ($sp)')    

    def pop_register(self, register):
        "Popes the register from the stack"
        self.code.append('addiu $sp, $sp, 4')   
        self.code.append(f'lw ${register}, ($sp)')    

    def save_to_register(self, expr):
        "Aditional code to save an expression into a register. Returns the register"
        if isinstance(expr, int):
            self.code.append(f'li $t9, {expr}')
            return 't9'
        elif isinstance(expr, VariableInfo):
            return self.addr_desc.get_var_reg(expr.name)