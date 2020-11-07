from codegen.cil_ast import *
from utils import visitor
from codegen.visitors.base_mips_visitor import BaseCILToMIPSVisitor
from codegen.tools import SymbolTable, AddressDescriptor, RegisterDescriptor
from semantic.tools import VariableInfo

class CILToMIPSVistor(BaseCILToMIPSVisitor):
    '''
    Registers:
    v0-v1: Used for expression evaluations and to hold the integer type 
        function results. Also used to pass the static link when calling 
        nested procedures.
    a0-a3: Used to pass the first 4 words of integer type actual 
        arguments, their values are not preserved across procedure 
        calls.
    t0-t7: Temporary registers used for expression evaluations; their 
        values aren’t preserved across procedure calls.
    s0-s7: Saved registers. Their values must be preserved across 
        procedure calls.
    t8-t9: Temporary registers used for expression evaluations; their 
        values aren’t preserved across procedure calls.
    k0-k1: Reserved for the operating system kernel.
    gp: Contains the global pointer.
    sp: Contains the stack pointer.
    fp: Contains the frame pointer (if needed); otherwise a saved register.
    ra: Contains the return address and is used for expression evaluation. 
        Register $ra only needs to be saved if the callee itself makes a call.

    '''
    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode):
        #? Quizá tenga que cambiar el orden en que estas cosas se visitan
        # visit TypeNodes
        for type_ in node.dottypes:
            self.visit(type_)
        # visit DataNodes
        for data in node.dotdata:
            self.visit(data)
        # visit code instrunctions
        for code in node.dotcode:
            self.visit(code)

    @visitor.when(TypeNode)
    def visit(self, node:TypeNode):
        pass

    @visitor.when(DataNode)
    def visit(self, node:DataNode):
        self.data_code.append(f"{node.name}: .asciiz \"{node.value}\"")    
        self.strings[node.value] = node.name    

    @visitor.when(FunctionNode)
    def visit(self, node:FunctionNode):
        self.code.append(f'{node.name}:')
        for param in node.params:
            self.visit(param)
        for var in node.localvars:
            self.visit(var)
        blocks = self.get_basic_blocks(node.instructions)
        self.next_use = self.construct_next_use(blocks)

        for block in blocks:
            self.block = block
            for inst in block:
                self.code += self.get_reg(inst, self.usable_reg)
                self.visit(inst)

    @visitor.when(ParamNode)
    def visit(self, node:ParamNode):
        self.code.append('addiu $sp, $sp, -4')
        register = self.addr_desc.get_var_reg(node.name)
        self.code.append(f'sw $sp, ${register} ($sp)')

    @visitor.when(LocalNode)
    def visit(self, node:LocalNode):
        # TODO: initialize variables
        pass

    @visitor.when(AssignNode)
    def visit(self, node:AssignNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.source, VariableInfo):
            rsrc = self.addr_desc.get_var_reg(node.source.name)
            self.code.append(f'move ${rdest}, ${rsrc}') 
        elif isinstance(node.source, int):
            self.code.append(f'li ${rdest}, ${node.source}')
        elif isinstance(node.source, str):  # esto nunca se debe ejecutar (se llama a load node)
            self.code.append(f'la ${rdest}, {self.strings[node.source]}')

    @visitor.when(NotNode)
    def visit(self, node:NotNode):
        # TODO: esta instruccion solo funciona con registros, así que revisar si al formar el nodo los operadores son variables
        rdest = self.addr_desc.get_var_reg(node.dest)
        rsrc = self.addr_desc.get_var_reg(node.expr)
        self.code.append(f'not {rdest}, {rsrc}')


    @visitor.when(IsVoidNode)
    def visit(self, node:IsVoidNode):
        pass


    @visitor.when(PlusNode)
    def visit(self, node:PlusNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"add ${rdest}, ${rleft}, ${rright}")
            elif isinstance(node.right, int):
                self.code.append(f"addi ${rdest}, ${rleft}, {node.right}")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {node.left + node.right}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"addi ${rdest}, ${node.left}, ${rright}")


    @visitor.when(MinusNode)
    def visit(self, node:MinusNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"sub ${rdest}, ${rleft}, ${rright}")
            elif isinstance(node.right, int):
                self.code.append(f"addi ${rdest}, ${rleft}, -{node.right}")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {node.left-node.right}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"sub $t9, $zero, {rright}")
                self.code.append(f"addi ${rdest}, $t9, {node.left}")


    @visitor.when(StarNode)
    def visit(self, node:StarNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"mult ${rleft}, ${rright}")
                self.code.append(f"mflo ${rdest}")
            elif isinstance(node.right, int):
                self.code.append(f"li $t9, {node.right}")
                self.code.append(f"mult ${rleft}, $t9")
                self.code.append(f"mflo ${rdest}")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {node.left*node.right}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"li $t9, {node.left}")
                self.code.append(f"mult $t9, ${rright}")
                self.code.append(f"mflo ${rdest}")


    @visitor.when(DivNode)
    def visit(self, node:DivNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"div ${rleft}, ${rright}")
                self.code.append(f"mflo ${rdest}")
            elif isinstance(node.right, int):
                self.code.append(f"li $t9, {node.right}")
                self.code.append(f"div ${rleft}, $t9")
                self.code.append(f"mflo ${rdest}")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {node.left / node.right}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"li $t9, {node.left}")
                self.code.append(f"div ${rright}, $t9")
                self.code.append(f"mflo ${rdest}")


    @visitor.when(LessNode)
    def visit(self, node:LessNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"slt ${rdest}, ${rleft}, ${rright}")
            elif isinstance(node.right, int):
                self.code.append(f"li $t9, {node.right}")
                self.code.append(f"slt ${rdest}, ${rleft}, $t9")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {int(node.left < node.right)}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"li $t9, {node.left}")
                self.code.append(f"slt ${rdest}, $t9, {rright}")


    @visitor.when(LessEqNode)
    def visit(self, node:MinusNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"sle ${rdest}, ${rleft}, ${rright}")
            elif isinstance(node.right, int):
                self.code.append(f"li $t9, {node.right}")
                self.code.append(f"sle ${rdest}, ${rleft}, $t9")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {int(node.left <= node.right)}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"li $t9, {node.left}")
                self.code.append(f"sle ${rdest}, $t9, {rright}")


    @visitor.when(EqualNode)
    def visit(self, node:MinusNode):
        rdest = self.addr_desc.get_var_reg(node.dest.name)
        if isinstance(node.left, VariableInfo):
            rleft = self.addr_desc.get_var_reg(node.left.name)
            if isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"seq ${rdest}, ${rleft}, ${rright}")
            elif isinstance(node.right, int):
                self.code.append(f"li $t9, {node.right}")
                self.code.append(f"seq ${rdest}, ${rleft}, $t9")
        elif isinstance(node.left, int):
            if isinstance(node.right, int):
                self.code.append(f"li ${rdest}, {int(node.left <= node.right)}")
            elif isinstance(node.right, VariableInfo):
                rright = self.addr_desc.get_var_reg(node.right.name)
                self.code.append(f"li $t9, {node.left}")
                self.code.append(f"seq ${rdest}, $t9, {rright}")


    @visitor.when(GetAttribNode)
    def visit(self, node:GetAttribNode):
        pass

    @visitor.when(SetAttribNode)
    def visit(self, node:SetAttribNode):
        pass

    @visitor.when(AllocateNode)
    def visit(self, node:AllocateNode):
        pass

    @visitor.when(TypeOfNode)
    def visit(self, node:TypeOfNode):
        pass

    @visitor.when(LabelNode)
    def visit(self, node:LabelNode):
        self.code.append(f'{node.label}')

    @visitor.when(GotoNode)
    def visit(self, node:GotoNode):
        self.code.append(f'j {node.label}')

    @visitor.when(GotoIfNode)
    def visit(self, node:GotoIfNode):
        if isinstance(node.cond, VariableInfo):
            reg = self.addr_desc.get_var_reg(node.cond.name)
            self.code.append(f'bnez ${reg}, {node.label}')
        elif isinstance(node.cond, int):
            self.code.append(f'li $t9, {node.cond}')
            self.code.append(f'bnez $t9, {node.label}')

    @visitor.when(StaticCallNode)
    def visit(self, node:StaticCallNode):
        self.code.append('move $fp, $sp')
        self.code.append('addiu $sp, $sp, 10') # Size of the method or only params?
        self.code.append(f'jal {node.function}')
        self.code.append(f'move ${node.dest.name}, $v0') # v0 es usado para guardar el valor de retorno

    @visitor.when(DynamicCallNode)
    def visit(self, node:DynamicCallNode):
        # TODO: Buscar cómo tratar con las instancias

    @visitor.when(ArgNode)
    def visit(self, node:ArgNode):
        pass

    @visitor.when(ReturnNode)
    def visit(self, node:ReturnNode):
        self.code.append(f'addiu $sp, $sp, 10') # method size or only params?
        self.code.append(f'jr $ra')

    @visitor.when(LoadNode)
    def visit(self, node:LoadNode):
        var_name = self.strings[node.msg]
        self.code.append(f'la ${node.dest}, {var_name}')

    @visitor.when(SelfNode)
    def visit(self, node:SelfNode):
        pass