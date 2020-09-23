import codegen.cil_ast as cil
from codegen.visitors.base_cil_visitor import BaseCOOLToCILVisitor
from utils.ast import *
from semantic.tools import Scope, VariableInfo
from semantic.types import *
from utils import visitor
from utils.utils import get_type, get_common_basetype

class COOLToCILVisitor(BaseCOOLToCILVisitor):
    @visitor.on('node')
    def visit(self, node):
        pass
    

    @visitor.when(ProgramNode)
    def visit(self, node:ProgramNode, scope:Scope):
        self.current_function = self.register_function('entry')
        instance = self.define_internal_local()
        result = self.define_internal_local()
        self.register_instruction(cil.AllocateNode('Main', instance))
        self.register_instruction(cil.ArgNode(instance))
        name = self.to_function_name('main', 'Main')
        self.register_instruction(cil.StaticCallNode(name, result))
        self.register_instruction(cil.ReturnNode(0))
        self.current_function = None
        
        for declaration, child_scope in zip(node.declarations, scope.children):
            self.visit(declaration, child_scope)

        return cil.ProgramNode(self.dottypes, self.dotdata, self.dotcode)
    
    
    @visitor.when(ClassDeclarationNode)
    def visit(self, node:ClassDeclarationNode, scope:Scope):
        self.current_type = self.context.get_type(node.id, node.pos)
        
        cil_type = self.register_type(node.id)
        
        for method, mtype in self.current_type.all_methods():
            cil_type.methods.append((method.name, self.to_function_name(method.name, mtype.name)))
        
        for a_name, a_type in self.current_type.all_attributes():
            cil_type.attributes.append((a_name.name, self.to_attr_name(a_name.name, a_type.name)))

        func_declarations = (f for f in node.features if isinstance(f, FuncDeclarationNode))
        for feature, child_scope in zip(func_declarations, scope.children):
            self.visit(feature, child_scope)


    @visitor.when(FuncDeclarationNode)
    def visit(self, node:FuncDeclarationNode, scope:Scope):   
        self.current_method = self.current_type.get_method(node.id, node.pos)
        
        name = self.to_function_name(node.id, self.current_type.name)
        self.current_function = self.register_function(name)
     
        # Handle PARAMS
        self.register_param(VariableInfo('self', self.current_type))
        for p_name, p_type in node.params:
            self.register_param(VariableInfo(p_name, p_type))
        
        value, _ = self.visit(node.body, scope)
        
        # Handle RETURN
        self.register_instruction(cil.ReturnNode(value)) 
        self.current_method = None


    @visitor.when(VarDeclarationNode)
    def visit(self, node:VarDeclarationNode, scope:Scope):
        #? Aquí son solo locals o attributes también
        var_info = scope.find_variable(node.id)
        vtype = get_type(var_info.type, self.current_type)
        local_var = self.register_local(VariableInfo(var_info.name, vtype))
        
        value, _ = self.visit(node.expr, scope)
        self.register_instruction(cil.AssignNode(local_var, value))
        return local_var, vtype


    @visitor.when(AssignNode)
    def visit(self, node:AssignNode, scope:Scope):
        var_info = scope.find_local(node.id)
        if var_info == None:
            var_info = scope.find_attribute(node.id)
            value, typex = self.visit(node.expr, scope)
            self.register_instruction(cil.SetAttribNode(VariableInfo('self', self.current_type), var_info, value))
        else:
            value, typex = self.visit(node.expr, scope)
        return value, typex


    def _return_type(self, typex:Type, node):
        meth = typex.get_method(node.id, node.pos)
        return get_type(meth.return_type, self.current_type)


    @visitor.when(CallNode)
    def visit(self, node:CallNode, scope:Scope):
        result = self.define_internal_local()
        obj, otype = self.visit(node.obj, scope)
        
        args = [self.visit(arg, scope)[0] for arg in node.args]
        
        self.register_instruction(cil.ArgNode(obj))
        for arg in args:
            self.register_instruction(cil.ArgNode(arg))
        
        name = self.to_function_name(node.id, otype.name)
        self.register_instruction(cil.DynamicCallNode(otype.name, name, result))
        return result, self._return_type(otype, node)
        

    @visitor.when(BaseCallNode)
    def visit(self, node:BaseCallNode, scope:Scope):
        result = self.define_internal_local()
        obj, otype = self.visit(node.obj, scope)
        
        args = [self.visit(arg, scope)[0] for arg in node.args]

        self.register_instruction(cil.ArgNode(obj))
        for arg in args:
            self.register_instruction(cil.ArgNode(arg))
        
        name = self.to_function_name(node.id, node.type)
        self.register_instruction(cil.DynamicCallNode(node.type, name, result))
        return result, self._return_type(otype, node)
       

    @visitor.when(StaticCallNode)
    def visit(self, node:StaticCallNode, scope:Scope):
        result = self.define_internal_local()
        
        args = [self.visit(arg, scope)[0] for arg in node.args]
        
        self.register_instruction(cil.ArgNode('self'))
        for arg in args:
            self.register_instruction(cil.ArgNode(arg))

        name = self.to_function_name(node.id, self.current_type.name)
        self.register_instruction(cil.StaticCallNode(name, result))
        return result, self._return_type(self.current_type, node)


    @visitor.when(ConstantNumNode)
    def visit(self, node:ConstantNumNode, scope:Scope):
        return int(node.lex), IntType()
        
    
    @visitor.when(ConstantBoolNode)
    def visit(self, node:ConstantBoolNode, scope:Scope):
        return 1 if node.lex  == 'true' else 0, BoolType()
   
    @visitor.when(ConstantStrNode)
    def visit(self, node:ConstantStrNode, scope:Scope):
        data = self.register_data(node.lex)
        result = self.define_internal_local()
        self.register_instruction(cil.LoadNode(result, data.name))
        return result, StringType()

    @visitor.when(VariableNode)
    def visit(self, node:VariableNode, scope:Scope):
        try:
            typex = scope.find_local(node.lex).type
            return node.lex, get_type(typex, self.current_type)
        except:
            var_info = scope.find_attribute(node.lex)
            local_var = self.register_local(var_info)
            self.register_instruction(cil.GetAttribNode('self', var_info, local_var))
            return local_var, get_type(var_info.type, self.current_type)

    @visitor.when(InstantiateNode)
    def visit(self, node:InstantiateNode, scope:Scope):
        instance = self.define_internal_local()
        typex = self.context.get_type(node.lex, node.pos)
        typex = get_type(typex, self.current_type)
        self.register_instruction(cil.AllocateNode(typex.name, instance))
        
        for attr, _ in typex.all_attributes(clean=True):
            expr, _ = self.visit(attr.expr, scope)
            self.register_instruction(cil.SetAttribNode(instance, attr, expr))
        return instance, typex


    @visitor.when(WhileNode)
    def visit(self, node:WhileNode, scope:Scope):
        '''
        LABEL start
        IF <cond> GOTO continue
        GOTO end
        LABEL continue
        res = <expr>
        GOTO start
        LABEL end
        '''
        start_label = cil.LabelNode('start')
        continue_label = cil.LabelNode('continue')
        end_label = cil.LabelNode('end')
        
        result = self.define_internal_local()
        self.register_instruction(cil.AssignNode(result, ConstantVoidNode()))
        self.register_instruction(start_label)

        cond, _ = self.visit(node.cond, scope)
        self.register_instruction(cil.GotoIfNode(cond, continue_label))
        self.register_instruction(cil.GotoNode(end_label))
        self.register_instruction(continue_label)
        expr, typex = self.visit(node.expr, scope)
        self.register_instruction(cil.GotoNode(start_label))
        self.register_instruction(end_label)
        
        self.register_instruction(cil.AssignNode(result, expr))
        return result, typex

    @visitor.when(ConditionalNode)
    def visit(self, node:ConditionalNode, scope:Scope):
        '''
        IF cond GOTO true
        result = <false.expr>
        GOTO end
        LABEL true
        result = <true.expr>
        LABEL end
        '''
        cond, _ = self.visit(node.cond, scope)

        true_label = cil.LabelNode(true)
        end_label = cil.LabelNode(end)

        result = self.define_internal_local()
        self.register_instruction(cil.GotoIfNode(cond, true_label))

        false_expr, ftypex = self.visit(node.else_stm, scope)
        self.register_instruction(cil.AssignNode(result, false_expr))
        self.register_instruction(cil.GotoNode(end_label))
        self.register_instruction(true_label)
        
        true_expr, ttypex = self.visit(node.stm, scope)
        self.register_instruction(cil.AssignNode(result, true_expr))
        self.register_instruction(end_label)
        return result, get_common_basetype([ttypex, ftypex])


    @visitor.when(BlockNode)
    def visit(self, node:BlockNode, scope:Scope):
        result = self.define_internal_local()
        value = None
        for exp in node.expr_list:
            value, typex = self.visit(exp, scope)
        self.register_instruction(cil.AssignNode(result, value))
        return result, typex

    @visitor.when(LetNode)
    def visit(self, node:LetNode, scope:Scope):
        child_scope = scope.expr_dict[node]
        for init in node.init_list:
            self.visit(init, child_scope)
        
        result = self.define_internal_local()
        expr, typex = self.visit(node.expr, child_scope)
        self.register_instruction(cil.AssignNode(result, expr))
        return result, typex

    @visitor.when(CaseNode) 
    def visit(self, node:CaseNode, scope:Scope):
        expr, typex = self.visit(node.expr, scope)
        result = self.define_internal_local()
        etype = self.define_internal_local()
        end_label = cil.LabelNode('end')
        self.register_instruction(cil.TypeOfNode(expr, etype))

        new_scope = scope.expr_dict[node]
        for i, (case, c_scope) in enumerate(zip(node.case_list, new_scope.children)):
            next_label = cil.LabelNode(f'next_{i}')
            expr_i, label, self.visit(case, c_scope, expr, etype, next_label)
            self.register_instruction(cil.AssignNode(result, expr_i))
            self.register_instruction(cil.GotoNode(end_label))
            self.register_instruction(label)
        self.register_instruction(end_label)
        return result, typex

    @visitor.when(OptionNode)
    def visit(self, node:OptionNode, scope:Scope, expr, expr_type, next_label):
        aux = self.define_internal_local()
        # TODO: Buscar una forma de representar conforms in cil
        self.register_instruction(cil.MinusNode(aux, expr_type, node.typex))

        self.register_instruction(cil.GotoIfNode(aux, next_label))
        var_info = scope.find_variable(node.id)
        local_var = self.register_local(var_info)
        self.register_instruction(cil.AssignNode(node.id, expr))

        expr_i, typex = self.visit(node.expr, scope)
        return exp_i, next_label

    @visitor.when(NotNode)
    def visit(self, node:NotNode, scope:Scope):
        """
        expr = <expr>
        IF expr GOTO true
            res = 1
            GOTO end
        LABEL true
            res = 0
        LABEL end
        """
        #? No sé si representar un  no...
        result = self.define_internal_local()
        expr, _ = self.visit(node.expr, scope)
        
        true_label = cil.LabelNode('true')
        end_label = cil.LabelNode('end')
        self.register_instruction(cil.GotoIfNode(expr, true_label))
        self.register_instruction(cil.AssignNode(result, 1))
        self.register_instruction(cil.GotoNode(end_label))
        self.register_instruction(true_label)
        self.register_instruction(cil.AssignNode(result, 0))
        self.register_instruction(end_label)
        # return self._define_unary_node(node, scope, cil.NotNode)
        return result, BoolType()

    @visitor.when(BinaryNotNode)
    def visit(self, node:NotNode, scope:Scope):
        return self._define_unary_node(node, scope, cil.BinaryNotNode)


    @visitor.when(IsVoidNode)
    def visit(self, node:IsVoidNode, scope:Scope):
        return self._define_unary_node(node, scope, cil.IsVoidNode)

    @visitor.when(PlusNode)
    def visit(self, node:PlusNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.PlusNode)

    @visitor.when(MinusNode)
    def visit(self, node:MinusNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.MinusNode)

    @visitor.when(StarNode)
    def visit(self, node:StarNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.StarNode)

    @visitor.when(DivNode)
    def visit(self, node:DivNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.DivNode)

    @visitor.when(LessNode)
    def visit(self, node:LessNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.MinusNode)
        
    @visitor.when(LessEqNode)
    def visit(self, node:LessEqNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.LessEqNode)

    @visitor.when(EqualNode)
    def visit(self, node:EqualNode, scope:Scope):
        return self._define_binary_node(node, scope, cil.MinusNode)