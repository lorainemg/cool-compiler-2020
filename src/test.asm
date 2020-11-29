.text
.globl main
main:
# Save types directions in the types array
la $t9, types
# Save space to locate the type info
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_String
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 0($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Int
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 4($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Object
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 8($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Bool
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 12($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_IO
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 16($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Graph
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 20($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Vertice
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 24($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Edge
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 28($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_EList
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 32($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_ECons
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 36($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_VList
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 40($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_VCons
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 44($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Parse
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 48($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_Main
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 52($t9)
# Allocating memory
li $v0, 9
li $a0, 8
syscall
# Filling table methods
la $t8, type_BoolOp
sw $t8, 0($v0)
# Copying direction to array
sw $v0, 56($t9)
# Copying parents
lw $v0, 0($t9)
li $t8, 0
sw $t8, 4($v0)
lw $v0, 4($t9)
li $t8, 0
sw $t8, 4($v0)
lw $v0, 8($t9)
li $t8, 0
sw $t8, 4($v0)
lw $v0, 12($t9)
li $t8, 0
sw $t8, 4($v0)
lw $v0, 16($t9)
lw $t8, 8($t9)
sw $t8, 4($v0)
lw $v0, 20($t9)
lw $t8, 8($t9)
sw $t8, 4($v0)
lw $v0, 24($t9)
lw $t8, 16($t9)
sw $t8, 4($v0)
lw $v0, 28($t9)
lw $t8, 16($t9)
sw $t8, 4($v0)
lw $v0, 32($t9)
lw $t8, 16($t9)
sw $t8, 4($v0)
lw $v0, 36($t9)
lw $t8, 32($t9)
sw $t8, 4($v0)
lw $v0, 40($t9)
lw $t8, 16($t9)
sw $t8, 4($v0)
lw $v0, 44($t9)
lw $t8, 40($t9)
sw $t8, 4($v0)
lw $v0, 48($t9)
lw $t8, 16($t9)
sw $t8, 4($v0)
lw $v0, 52($t9)
lw $t8, 48($t9)
sw $t8, 4($v0)
lw $v0, 56($t9)
lw $t8, 8($t9)
sw $t8, 4($v0)
# Save method directions in the methods array
la $v0, methods
la $t9, entry
sw $t9, 0($v0)
la $t9, function_abort_Object
sw $t9, 4($v0)
la $t9, function_type_name_Object
sw $t9, 8($v0)
la $t9, function_copy_Object
sw $t9, 12($v0)
la $t9, function_out_string_IO
sw $t9, 16($v0)
la $t9, function_out_int_IO
sw $t9, 20($v0)
la $t9, function_in_int_IO
sw $t9, 24($v0)
la $t9, function_in_string_IO
sw $t9, 28($v0)
la $t9, function_length_String
sw $t9, 32($v0)
la $t9, function_concat_String
sw $t9, 36($v0)
la $t9, function_substr_String
sw $t9, 40($v0)
la $t9, function_type_name_String
sw $t9, 44($v0)
la $t9, function_copy_String
sw $t9, 48($v0)
la $t9, function_type_name_Int
sw $t9, 52($v0)
la $t9, function_copy_Int
sw $t9, 56($v0)
la $t9, function_type_name_Bool
sw $t9, 60($v0)
la $t9, function_copy_Bool
sw $t9, 64($v0)
la $t9, function_Graph_Graph
sw $t9, 68($v0)
la $t9, function_add_vertice_Graph
sw $t9, 72($v0)
la $t9, function_print_E_Graph
sw $t9, 76($v0)
la $t9, function_print_V_Graph
sw $t9, 80($v0)
la $t9, function_Vertice_Vertice
sw $t9, 84($v0)
la $t9, function_outgoing_Vertice
sw $t9, 88($v0)
la $t9, function_number_Vertice
sw $t9, 92($v0)
la $t9, function_init_Vertice
sw $t9, 96($v0)
la $t9, function_add_out_Vertice
sw $t9, 100($v0)
la $t9, function_print_Vertice
sw $t9, 104($v0)
la $t9, function_Edge_Edge
sw $t9, 108($v0)
la $t9, function_init_Edge
sw $t9, 112($v0)
la $t9, function_print_Edge
sw $t9, 116($v0)
la $t9, function_EList_EList
sw $t9, 120($v0)
la $t9, function_isNil_EList
sw $t9, 124($v0)
la $t9, function_head_EList
sw $t9, 128($v0)
la $t9, function_tail_EList
sw $t9, 132($v0)
la $t9, function_cons_EList
sw $t9, 136($v0)
la $t9, function_append_EList
sw $t9, 140($v0)
la $t9, function_print_EList
sw $t9, 144($v0)
la $t9, function_ECons_ECons
sw $t9, 148($v0)
la $t9, function_isNil_ECons
sw $t9, 152($v0)
la $t9, function_head_ECons
sw $t9, 156($v0)
la $t9, function_tail_ECons
sw $t9, 160($v0)
la $t9, function_init_ECons
sw $t9, 164($v0)
la $t9, function_print_ECons
sw $t9, 168($v0)
la $t9, function_VList_VList
sw $t9, 172($v0)
la $t9, function_isNil_VList
sw $t9, 176($v0)
la $t9, function_head_VList
sw $t9, 180($v0)
la $t9, function_tail_VList
sw $t9, 184($v0)
la $t9, function_cons_VList
sw $t9, 188($v0)
la $t9, function_print_VList
sw $t9, 192($v0)
la $t9, function_VCons_VCons
sw $t9, 196($v0)
la $t9, function_isNil_VCons
sw $t9, 200($v0)
la $t9, function_head_VCons
sw $t9, 204($v0)
la $t9, function_tail_VCons
sw $t9, 208($v0)
la $t9, function_init_VCons
sw $t9, 212($v0)
la $t9, function_print_VCons
sw $t9, 216($v0)
la $t9, function_Parse_Parse
sw $t9, 220($v0)
la $t9, function_read_input_Parse
sw $t9, 224($v0)
la $t9, function_parse_line_Parse
sw $t9, 228($v0)
la $t9, function_c2i_Parse
sw $t9, 232($v0)
la $t9, function_a2i_Parse
sw $t9, 236($v0)
la $t9, function_a2i_aux_Parse
sw $t9, 240($v0)
la $t9, function_Main_Main
sw $t9, 244($v0)
la $t9, function_main_Main
sw $t9, 248($v0)
la $t9, function_and_BoolOp
sw $t9, 252($v0)
la $t9, function_or_BoolOp
sw $t9, 256($v0)

entry:
# Gets the params from the stack
move $fp, $sp
# Gets the frame pointer from the stack
# Updates stack pointer pushing local__internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local__internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 24
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Main
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 24
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 64
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_read_input_Parse in t9
lw $t9, 224($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_parse_line_Parse in t9
lw $t9, 228($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_c2i_Parse in t9
lw $t9, 232($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_a2i_Parse in t9
lw $t9, 236($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_a2i_aux_Parse in t9
lw $t9, 240($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_Parse_Parse in t9
lw $t9, 220($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
# Save the direction of the method function_main_Main in t9
lw $t9, 248($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 56($v0)
# Save the direction of the method function_Main_Main in t9
lw $t9, 244($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 60($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 52($t8)
sw $v0, 12($t0)
# Static Dispatch of the method Main
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
# This function will consume the arguments
jal function_Main_Main
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# Static Dispatch of the method main
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_main_Main
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
li $v0, 0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_abort_Object:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_abort_Object_self_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Moving self to local_abort_Object_self_0
move $t1, $t0
sw $t1, -4($fp)
# Exiting the program
li $t8, 0
li $v0, 17
move $a0, $t8
syscall
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_type_name_Object:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_type_name_Object_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_type_name_Object_result_0 <- Type of self
lw $t1, 0($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_copy_Object:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_copy_Object_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
lw $t9, 4($t0)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
move $a0, $t9
syscall
move $t1, $v0
# Loop to copy every field of the previous object
# t8 the register to loop
li $t8, 0
loop_0:
# In t9 is stored the size of the object
bge $t8, $t9, exit_0
lw $a0, ($t0)
sw $a0, ($v0)
addi $v0, $v0, 4
addi $t0, $t0, 4
# Increase loop counter
addi $t8, $t8, 4
j loop_0
exit_0:
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_out_string_IO:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value word
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_out_string_String_self_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# Moving self to local_out_string_String_self_0
move $t1, $t0
sw $t1, -8($fp)
lw $t2, -0($fp)
# Printing a string
li $v0, 4
move $a0, $t2
syscall
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
sw $t2, -0($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_out_int_IO:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value number
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_out_int_IO_self_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# Moving self to local_out_int_IO_self_0
move $t1, $t0
sw $t1, -8($fp)
lw $t2, -0($fp)
# Printing an int
li $v0, 1
move $a0, $t2
syscall
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
sw $t2, -0($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_in_int_IO:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_in_int_IO_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Reading a int
li $v0, 5
syscall
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_in_string_IO:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_in_string_IO_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Allocating memory for the buffer
li $a0, 356
li $v0, 9
syscall
move $t0, $v0
# Reading a string
# Putting buffer in a0
move $a0, $t0
# Putting length of string in a1
li $a1, 356
li $v0, 8
syscall
# Walks to eliminate the newline
move $t9, $t0
start_1:
lb $t8, 0($t9)
beqz $t8, end_1
add $t9, $t9, 1
j start_1
end_1:
addiu $t9, $t9, -1
sb $0, ($t9)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_length_String:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_length_String_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
move $t8, $t0
# Determining the length of a string
loop_2:
lb $t9, 0($t8)
beq $t9, $zero, end_2
addi $t8, $t8, 1
j loop_2
end_2:
sub $t1, $t8, $t0
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_concat_String:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value word
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_concat_String_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -0($fp)
lw $t2, -8($fp)
# Allocating memory for the buffer
li $a0, 356
li $v0, 9
syscall
move $t2, $v0
# Copy the first string to dest
move $a0, $t0
move $a1, $t2
sw $ra, ($sp)
addiu $sp, $sp, -4
jal strcopier
# Concatenate second string on result buffer
move $a0, $t1
move $a1, $v0
jal strcopier
sb $0, 0($v0)
addiu $sp, $sp, 4
lw $ra, ($sp)
j finish_3
# Definition of strcopier
strcopier:
# In a0 is the source and in a1 is the destination
loop_3:
lb $t8, ($a0)
beq $t8, $zero, end_3
addiu $a0, $a0, 1
sb $t8, ($a1)
addiu $a1, $a1, 1
b loop_3
end_3:
move $v0, $a1
jr $ra
finish_3:
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_substr_String:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value begin
addiu $fp, $fp, 4
# Pops the register with the param value end
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_substr_String_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -0($fp)
lw $t2, -12($fp)
# Allocating memory for the buffer
li $a0, 356
li $v0, 9
syscall
move $t2, $v0
lw $t3, -8($fp)
# Getting the substring of a node
# Move to the first position in the string
li $v0, 0
move $t8, $t3
start_4:
lb $t9, 0($t8)
beqz $t9, error_4
addi $v0, 1
bgt $v0, $t0, end_len_4
addi $t8, 1
j start_4
end_len_4:
# Saving dest to iterate over him
move $v0, $t2
loop_4:
sub $t9, $v0, $t2
beq $t9, $t1, end_4
lb $t9, 0($t8)
beqz $t9, error_4
sb $t9, 0($v0)
addi $t8, $t8, 1
addi $v0, $v0, 1
j loop_4
error_4:
la $a0, index_error
li $v0, 4
move $a0, $t3
syscall
li $v0, 1
move $a0, $t0
syscall
li $v0, 1
move $a0, $t1
syscall
j .raise
end_4:
sb $0, 0($v0)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_type_name_String:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_type_name_String_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_type_name_String_result_0 type_String
la $t0, type_String
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_copy_String:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_copy_String_result_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_copy_String_result_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_copy_String_result_2 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -8($fp)
move $t8, $t0
# Determining the length of a string
loop_5:
lb $t9, 0($t8)
beq $t9, $zero, end_5
addi $t8, $t8, 1
j loop_5
end_5:
sub $t1, $t8, $t0
lw $t2, -12($fp)
# local_copy_String_result_2 <- local_copy_String_result_1 - 1
addi $t2, $t1, -1
lw $t3, -4($fp)
# Allocating memory for the buffer
li $a0, 356
li $v0, 9
syscall
move $t3, $v0
li $t8, 0
# Getting the substring of a node
# Move to the first position in the string
li $v0, 0
move $t8, $t0
start_6:
lb $t9, 0($t8)
beqz $t9, error_6
addi $v0, 1
bgt $v0, $t8, end_len_6
addi $t8, 1
j start_6
end_len_6:
# Saving dest to iterate over him
move $v0, $t3
loop_6:
sub $t9, $v0, $t3
beq $t9, $t2, end_6
lb $t9, 0($t8)
beqz $t9, error_6
sb $t9, 0($v0)
addi $t8, $t8, 1
addi $v0, $v0, 1
j loop_6
error_6:
la $a0, index_error
li $v0, 4
move $a0, $t0
syscall
li $v0, 1
move $a0, $t8
syscall
li $v0, 1
move $a0, $t2
syscall
j .raise
end_6:
sb $0, 0($v0)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -8($fp)
sw $t2, -12($fp)
sw $t3, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_type_name_Int:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_type_name_Int_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_type_name_Int_result_0 type_Int
la $t0, type_Int
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_copy_Int:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_copy_Int_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Moving self to local_copy_Int_result_0
move $t1, $t0
sw $t1, -4($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_type_name_Bool:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_type_name_Bool_result_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_type_name_Bool_result_0 type_Bool
la $t0, type_Bool
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_copy_Bool:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_copy_result_Bool_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Moving self to local_copy_result_Bool_0
move $t1, $t0
sw $t1, -4($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_Graph_Graph:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_Graph_Graph_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Graph_Graph_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Graph_Graph_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 16
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_VList
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 16
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 56
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_isNil_VList in t9
lw $t9, 176($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_head_VList in t9
lw $t9, 180($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_tail_VList in t9
lw $t9, 184($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_cons_VList in t9
lw $t9, 188($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_print_VList in t9
lw $t9, 192($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_VList_VList in t9
lw $t9, 172($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 40($t8)
sw $v0, 12($t0)
# Static Dispatch of the method VList
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
# This function will consume the arguments
jal function_VList_VList
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
# self . vertices <- SET local_Graph_Graph_internal_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 16
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_EList
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 16
sw $t9, 4($v0)
move $t2, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 60
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_isNil_EList in t9
lw $t9, 124($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_head_EList in t9
lw $t9, 128($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_tail_EList in t9
lw $t9, 132($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_cons_EList in t9
lw $t9, 136($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_append_EList in t9
lw $t9, 140($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_print_EList in t9
lw $t9, 144($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
# Save the direction of the method function_EList_EList in t9
lw $t9, 120($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 56($v0)
sw $v0, 8($t2)
# Adding Type Info addr
la $t8, types
lw $v0, 32($t8)
sw $v0, 12($t2)
# Static Dispatch of the method EList
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal function_EList_EList
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
# self . edges <- SET local_Graph_Graph_internal_1
sw $t0, 20($t1)
lw $t2, -12($fp)
# Moving self to local_Graph_Graph_internal_2
move $t2, $t1
sw $t2, -12($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_add_vertice_Graph:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value v
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_add_vertice_Graph_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_vertice_Graph_edges_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_vertice_Graph_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_vertice_Graph_vertices_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_vertice_Graph_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_vertice_Graph_internal_5 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_outgoing_Vertice
lw $t8, 32($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -12($fp)
# local_add_vertice_Graph_edges_1 <- GET self . edges
lw $t2, 20($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_append_EList
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -4($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# self . edges <- SET local_add_vertice_Graph_internal_2
sw $t0, 20($t1)
lw $t2, -20($fp)
# local_add_vertice_Graph_vertices_3 <- GET self . vertices
lw $t2, 16($t1)
lw $t3, -24($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_cons_VList
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t4, -0($fp)
sw $t4, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -4($fp)
sw $t2, -20($fp)
sw $t3, -24($fp)
sw $t4, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -24($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# self . vertices <- SET local_add_vertice_Graph_internal_4
sw $t0, 16($t1)
lw $t2, -28($fp)
# Moving local_add_vertice_Graph_internal_4 to local_add_vertice_Graph_internal_5
move $t2, $t0
sw $t2, -28($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -24($fp)
sw $t1, -4($fp)
sw $t2, -28($fp)
# Removing all locals from stack
addiu $sp, $sp, 32
jr $ra


function_print_E_Graph:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_E_Graph_edges_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_E_Graph_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_print_E_Graph_edges_0 <- GET self . edges
lw $t1, 20($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_print_EList
lw $t8, 52($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_print_V_Graph:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_V_Graph_vertices_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_V_Graph_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_print_V_Graph_vertices_0 <- GET self . vertices
lw $t1, 16($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_print_VList
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_Vertice_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_Vertice_Vertice_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Vertice_Vertice_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
# self . num <- SET 0
li $t9, 0
sw $t9, 16($t0)
lw $t1, -4($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 16
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_EList
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 16
sw $t9, 4($v0)
move $t1, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 60
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_isNil_EList in t9
lw $t9, 124($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_head_EList in t9
lw $t9, 128($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_tail_EList in t9
lw $t9, 132($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_cons_EList in t9
lw $t9, 136($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_append_EList in t9
lw $t9, 140($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_print_EList in t9
lw $t9, 144($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
# Save the direction of the method function_EList_EList in t9
lw $t9, 120($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 56($v0)
sw $v0, 8($t1)
# Adding Type Info addr
la $t8, types
lw $v0, 32($t8)
sw $v0, 12($t1)
# Static Dispatch of the method EList
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# This function will consume the arguments
jal function_EList_EList
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
# self . out <- SET local_Vertice_Vertice_internal_0
sw $t0, 20($t1)
lw $t2, -8($fp)
# Moving self to local_Vertice_Vertice_internal_1
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_outgoing_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_outgoing_Vertice_out_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_outgoing_Vertice_out_0 <- GET self . out
lw $t1, 20($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_number_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_number_Vertice_num_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_number_Vertice_num_0 <- GET self . num
lw $t1, 16($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_init_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value n
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_init_Vertice_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# self . num <- SET n
sw $t0, 16($t1)
lw $t2, -8($fp)
# Moving self to local_init_Vertice_internal_0
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_add_out_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value s
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_add_out_Vertice_out_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_out_Vertice_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_add_out_Vertice_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# local_add_out_Vertice_out_0 <- GET self . out
lw $t1, 20($t0)
lw $t2, -12($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_cons_EList
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
sw $t2, -12($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# self . out <- SET local_add_out_Vertice_internal_1
sw $t0, 20($t1)
lw $t2, -16($fp)
# Moving self to local_add_out_Vertice_internal_2
move $t2, $t1
sw $t2, -16($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
sw $t1, -4($fp)
sw $t2, -16($fp)
# Removing all locals from stack
addiu $sp, $sp, 20
jr $ra


function_print_Vertice:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_Vertice_num_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Vertice_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Vertice_out_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Vertice_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Vertice_internal_4 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_print_Vertice_num_0 <- GET self . num
lw $t1, 16($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_out_int_IO
lw $t8, 20($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -12($fp)
# local_print_Vertice_out_2 <- GET self . out
lw $t2, 20($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_print_EList
lw $t8, 52($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Moving local_print_Vertice_internal_3 to local_print_Vertice_internal_4
move $t1, $t0
sw $t1, -20($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
# Removing all locals from stack
addiu $sp, $sp, 24
jr $ra


function_Edge_Edge:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_Edge_Edge_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
# self . from <- SET 0
li $t9, 0
sw $t9, 16($t0)
# self . to <- SET 0
li $t9, 0
sw $t9, 20($t0)
# self . weight <- SET 0
li $t9, 0
sw $t9, 24($t0)
lw $t1, -4($fp)
# Moving self to local_Edge_Edge_internal_0
move $t1, $t0
sw $t1, -4($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_init_Edge:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value f
addiu $fp, $fp, 4
# Pops the register with the param value t
addiu $fp, $fp, 4
# Pops the register with the param value w
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_init_Edge_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -8($fp)
lw $t1, -12($fp)
# self . from <- SET f
sw $t0, 16($t1)
lw $t2, -4($fp)
# self . to <- SET t
sw $t2, 20($t1)
lw $t3, -0($fp)
# self . weight <- SET w
sw $t3, 24($t1)
lw $t4, -16($fp)
# Moving self to local_init_Edge_internal_0
move $t4, $t1
sw $t4, -16($fp)
move $v0, $t4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -12($fp)
sw $t2, -4($fp)
sw $t3, -0($fp)
sw $t4, -16($fp)
# Removing all locals from stack
addiu $sp, $sp, 20
jr $ra


function_print_Edge:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_Edge_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_from_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_to_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_weight_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_Edge_internal_12 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_print_Edge_internal_0 data_1
la $t0, data_1
lw $t1, -0($fp)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_string_IO
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -12($fp)
# local_print_Edge_from_2 <- GET self . from
lw $t2, 16($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_int_IO
lw $t8, 20($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Saves in local_print_Edge_internal_4 data_2
la $t1, data_2
lw $t2, -0($fp)
lw $t3, -24($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_out_string_IO
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
sw $t2, -0($fp)
sw $t3, -24($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -24($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -28($fp)
# local_print_Edge_to_6 <- GET self . to
lw $t2, 20($t1)
lw $t3, -32($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_int_IO
lw $t8, 20($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -24($fp)
sw $t1, -0($fp)
sw $t2, -28($fp)
sw $t3, -32($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -32($fp)
# saves the return value
move $t0, $v0
lw $t1, -36($fp)
# Saves in local_print_Edge_internal_8 data_3
la $t1, data_3
lw $t2, -0($fp)
lw $t3, -40($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_out_string_IO
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -32($fp)
sw $t1, -36($fp)
sw $t2, -0($fp)
sw $t3, -40($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -40($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -44($fp)
# local_print_Edge_weight_10 <- GET self . weight
lw $t2, 24($t1)
lw $t3, -48($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_int_IO
lw $t8, 20($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -40($fp)
sw $t1, -0($fp)
sw $t2, -44($fp)
sw $t3, -48($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -48($fp)
# saves the return value
move $t0, $v0
lw $t1, -52($fp)
# Moving local_print_Edge_internal_11 to local_print_Edge_internal_12
move $t1, $t0
sw $t1, -52($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -48($fp)
sw $t1, -52($fp)
# Removing all locals from stack
addiu $sp, $sp, 56
jr $ra


function_EList_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_EList_EList_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_EList_EList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t0, $v0
lw $t1, -0($fp)
# self . car <- SET local_EList_EList_car_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Moving self to local_EList_EList_internal_1
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_isNil_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
li $v0, 1
# Empty all used registers and saves them to memory
# Removing all locals from stack
addiu $sp, $sp, 4
jr $ra


function_head_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_head_EList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_head_EList_car_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_head_EList_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_abort_Object
lw $t8, 4($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -8($fp)
# local_head_EList_car_1 <- GET self . car
lw $t2, 16($t1)
lw $t3, -12($fp)
# Moving local_head_EList_car_1 to local_head_EList_internal_2
move $t3, $t2
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_tail_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_tail_EList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_tail_EList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_abort_Object
lw $t8, 4($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -8($fp)
# Moving self to local_tail_EList_internal_1
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_cons_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value e
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_cons_EList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_cons_EList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -8($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 20
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_ECons
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 20
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 68
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_isNil_ECons in t9
lw $t9, 152($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_head_ECons in t9
lw $t9, 156($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_tail_ECons in t9
lw $t9, 160($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_cons_EList in t9
lw $t9, 136($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_append_EList in t9
lw $t9, 140($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_print_ECons in t9
lw $t9, 168($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
# Save the direction of the method function_EList_EList in t9
lw $t9, 120($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 56($v0)
# Save the direction of the method function_init_ECons in t9
lw $t9, 164($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 60($v0)
# Save the direction of the method function_ECons_ECons in t9
lw $t9, 148($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 64($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 36($t8)
sw $v0, 12($t0)
# Static Dispatch of the method ECons
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# This function will consume the arguments
jal function_ECons_ECons
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_init_ECons
lw $t8, 60($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -4($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -12($fp)
sw $t2, -4($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_append_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value l
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_append_EList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_append_EList_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_append_EList_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_append_EList_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_append_EList_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_append_EList_internal_5 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_isNil_EList
lw $t8, 32($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
# If local_append_EList_internal_0 goto true__250
sw $t0, -8($fp)
bnez $t0, true__250
lw $t0, -4($fp)
lw $t1, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_tail_EList
lw $t8, 40($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_append_EList
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -0($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
sw $t2, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -20($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -24($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_head_EList
lw $t8, 36($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -20($fp)
sw $t1, -4($fp)
sw $t2, -24($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -24($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
lw $t2, -28($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_cons_EList
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -24($fp)
sw $t1, -20($fp)
sw $t2, -28($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -28($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Moving local_append_EList_internal_5 to local_append_EList_internal_1
move $t1, $t0
sw $t1, -12($fp)
sw $t0, -28($fp)
sw $t1, -12($fp)
j end__250
true__250:
lw $t0, -0($fp)
lw $t1, -12($fp)
# Moving l to local_append_EList_internal_1
move $t1, $t0
sw $t1, -12($fp)
sw $t0, -0($fp)
sw $t1, -12($fp)
end__250:
lw $t0, -12($fp)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 32
jr $ra


function_print_EList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_EList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_EList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_print_EList_internal_0 data_4
la $t0, data_4
lw $t1, -0($fp)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_string_IO
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_ECons_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_ECons_ECons_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_ECons_ECons_cdr_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_ECons_ECons_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t0, $v0
lw $t1, -0($fp)
# self . car <- SET local_ECons_ECons_car_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t2, $v0
# self . cdr <- SET local_ECons_ECons_cdr_1
sw $t2, 20($t1)
lw $t3, -12($fp)
# Moving self to local_ECons_ECons_internal_2
move $t3, $t1
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_isNil_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
li $v0, 0
# Empty all used registers and saves them to memory
# Removing all locals from stack
addiu $sp, $sp, 4
jr $ra


function_head_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_head_ECons_car_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_head_ECons_car_0 <- GET self . car
lw $t1, 16($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_tail_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_tail_ECons_cdr_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_tail_ECons_cdr_0 <- GET self . cdr
lw $t1, 20($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_init_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value e
addiu $fp, $fp, 4
# Pops the register with the param value rest
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_init_ECons_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# self . car <- SET e
sw $t0, 16($t1)
lw $t2, -0($fp)
# self . cdr <- SET rest
sw $t2, 20($t1)
lw $t3, -12($fp)
# Moving self to local_init_ECons_internal_0
move $t3, $t1
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
sw $t2, -0($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_print_ECons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_ECons_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_ECons_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_ECons_cdr_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_ECons_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_ECons_internal_4 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_print_ECons_car_0 <- GET self . car
lw $t1, 16($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_print_Edge
lw $t8, 36($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -12($fp)
# local_print_ECons_cdr_2 <- GET self . cdr
lw $t2, 20($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_print_EList
lw $t8, 52($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Moving local_print_ECons_internal_3 to local_print_ECons_internal_4
move $t1, $t0
sw $t1, -20($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
# Removing all locals from stack
addiu $sp, $sp, 24
jr $ra


function_VList_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_VList_VList_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_VList_VList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t0, $v0
lw $t1, -0($fp)
# self . car <- SET local_VList_VList_car_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Moving self to local_VList_VList_internal_1
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_isNil_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
li $v0, 1
# Empty all used registers and saves them to memory
# Removing all locals from stack
addiu $sp, $sp, 4
jr $ra


function_head_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_head_VList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_head_VList_car_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_head_VList_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_abort_Object
lw $t8, 4($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -8($fp)
# local_head_VList_car_1 <- GET self . car
lw $t2, 16($t1)
lw $t3, -12($fp)
# Moving local_head_VList_car_1 to local_head_VList_internal_2
move $t3, $t2
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_tail_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_tail_VList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_tail_VList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_abort_Object
lw $t8, 4($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -4($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -8($fp)
# Moving self to local_tail_VList_internal_1
move $t2, $t1
sw $t2, -8($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_cons_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value v
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_cons_VList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_cons_VList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -8($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 20
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_VCons
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 20
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 64
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_isNil_VCons in t9
lw $t9, 200($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_head_VCons in t9
lw $t9, 204($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_tail_VCons in t9
lw $t9, 208($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_cons_VList in t9
lw $t9, 188($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_print_VCons in t9
lw $t9, 216($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_VList_VList in t9
lw $t9, 172($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
# Save the direction of the method function_init_VCons in t9
lw $t9, 212($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 56($v0)
# Save the direction of the method function_VCons_VCons in t9
lw $t9, 196($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 60($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 44($t8)
sw $v0, 12($t0)
# Static Dispatch of the method VCons
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# This function will consume the arguments
jal function_VCons_VCons
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_init_VCons
lw $t8, 56($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -4($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -12($fp)
sw $t2, -4($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_print_VList:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_VList_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_VList_internal_1 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Saves in local_print_VList_internal_0 data_5
la $t0, data_5
lw $t1, -0($fp)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_out_string_IO
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# Removing all locals from stack
addiu $sp, $sp, 12
jr $ra


function_VCons_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_VCons_VCons_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_VCons_VCons_cdr_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_VCons_VCons_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t0, $v0
lw $t1, -0($fp)
# self . car <- SET local_VCons_VCons_car_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t2, $v0
# self . cdr <- SET local_VCons_VCons_cdr_1
sw $t2, 20($t1)
lw $t3, -12($fp)
# Moving self to local_VCons_VCons_internal_2
move $t3, $t1
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_isNil_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
li $v0, 0
# Empty all used registers and saves them to memory
# Removing all locals from stack
addiu $sp, $sp, 4
jr $ra


function_head_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_head_VCons_car_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_head_VCons_car_0 <- GET self . car
lw $t1, 16($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_tail_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_tail_VCons_cdr_0 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_tail_VCons_cdr_0 <- GET self . cdr
lw $t1, 20($t0)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
# Removing all locals from stack
addiu $sp, $sp, 8
jr $ra


function_init_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value v
addiu $fp, $fp, 4
# Pops the register with the param value rest
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_init_VCons_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
lw $t1, -8($fp)
# self . car <- SET v
sw $t0, 16($t1)
lw $t2, -0($fp)
# self . cdr <- SET rest
sw $t2, 20($t1)
lw $t3, -12($fp)
# Moving self to local_init_VCons_internal_0
move $t3, $t1
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -8($fp)
sw $t2, -0($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_print_VCons:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_print_VCons_car_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_VCons_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_VCons_cdr_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_VCons_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_print_VCons_internal_4 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_print_VCons_car_0 <- GET self . car
lw $t1, 16($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_print_Vertice
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -12($fp)
# local_print_VCons_cdr_2 <- GET self . cdr
lw $t2, 20($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_print_VList
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Moving local_print_VCons_internal_3 to local_print_VCons_internal_4
move $t1, $t0
sw $t1, -20($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
# Removing all locals from stack
addiu $sp, $sp, 24
jr $ra


function_Parse_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_Parse_Parse_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Parse_Parse_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Parse_Parse_internal_2 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 12
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_BoolOp
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 12
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 24
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_and_BoolOp in t9
lw $t9, 252($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_or_BoolOp in t9
lw $t9, 256($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 56($t8)
sw $v0, 12($t0)
lw $t1, -0($fp)
# self . boolop <- SET local_Parse_Parse_internal_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Saves in local_Parse_Parse_internal_1 data_6
la $t2, data_6
# self . rest <- SET local_Parse_Parse_internal_1
sw $t2, 20($t1)
lw $t3, -12($fp)
# Moving self to local_Parse_Parse_internal_2
move $t3, $t1
sw $t3, -12($fp)
move $v0, $t3
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_read_input_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_read_input_Parse_g_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_line_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_boolop_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_12 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_13 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_14 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_15 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_16 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_read_input_Parse_internal_17 to the stack
addiu $sp, $sp, -4
lw $t0, -8($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 20
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Graph
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 20
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 32
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_add_vertice_Graph in t9
lw $t9, 72($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_print_E_Graph in t9
lw $t9, 76($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_print_V_Graph in t9
lw $t9, 80($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_Graph_Graph in t9
lw $t9, 68($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 20($t8)
sw $v0, 12($t0)
# Static Dispatch of the method Graph
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
# This function will consume the arguments
jal function_Graph_Graph
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# Moving local_read_input_Parse_internal_1 to local_read_input_Parse_g_0
move $t1, $t0
sw $t1, -4($fp)
lw $t2, -0($fp)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_in_string_IO
lw $t8, 24($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -4($fp)
sw $t2, -0($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Moving local_read_input_Parse_internal_3 to local_read_input_Parse_line_2
move $t1, $t0
sw $t1, -12($fp)
lw $t2, -20($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t2, $v0
sw $t0, -16($fp)
sw $t1, -12($fp)
sw $t2, -20($fp)
start__446:
lw $t0, -0($fp)
lw $t1, -24($fp)
# local_read_input_Parse_boolop_5 <- GET self . boolop
lw $t1, 16($t0)
lw $t2, -36($fp)
# Saves in local_read_input_Parse_internal_8 data_7
la $t2, data_7
lw $t3, -12($fp)
lw $t4, -32($fp)
# local_read_input_Parse_internal_7 <- local_read_input_Parse_line_2 = local_read_input_Parse_internal_8
move $t8, $t3
move $t9, $t2
loop_7:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_7
beqz $a1, mismatch_7
seq $v0, $a0, $a1
beqz $v0, mismatch_7
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_7
mismatch_7:
li $v0, 0
j end_7
check_7:
bnez $a1, mismatch_7
li $v0, 1
end_7:
move $t4, $v0
lw $t5, -28($fp)
# local_read_input_Parse_internal_6 <- not local_read_input_Parse_internal_7
beqz $t4, false_8
li $t5, 0
j end_8
false_8:
li $t5, 1
end_8:
lw $t6, -48($fp)
# Saves in local_read_input_Parse_internal_11 data_8
la $t6, data_8
lw $t7, -44($fp)
# local_read_input_Parse_internal_10 <- local_read_input_Parse_line_2 = local_read_input_Parse_internal_11
move $t8, $t3
move $t9, $t6
loop_9:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_9
beqz $a1, mismatch_9
seq $v0, $a0, $a1
beqz $v0, mismatch_9
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_9
mismatch_9:
li $v0, 0
j end_9
check_9:
bnez $a1, mismatch_9
li $v0, 1
end_9:
move $t7, $v0
lw $a0, -40($fp)
# local_read_input_Parse_internal_9 <- not local_read_input_Parse_internal_10
beqz $t7, false_10
li $a0, 0
j end_10
false_10:
li $a0, 1
end_10:
lw $a1, -52($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_and_BoolOp
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $a0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t5, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -24($fp)
sw $t2, -36($fp)
sw $t3, -12($fp)
sw $t4, -32($fp)
sw $t5, -28($fp)
sw $t6, -48($fp)
sw $t7, -44($fp)
sw $a0, -40($fp)
sw $a1, -52($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -52($fp)
# saves the return value
move $t0, $v0
# If not local_read_input_Parse_internal_12 goto end__446
sw $t0, -52($fp)
beqz $t0, end__446
lw $t0, -0($fp)
lw $t1, -56($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_parse_line_Parse
lw $t8, 36($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -12($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -56($fp)
sw $t2, -12($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -56($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -60($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_add_vertice_Graph
lw $t8, 16($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -56($fp)
sw $t1, -4($fp)
sw $t2, -60($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -60($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -64($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_in_string_IO
lw $t8, 24($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -60($fp)
sw $t1, -0($fp)
sw $t2, -64($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -64($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Moving local_read_input_Parse_internal_15 to local_read_input_Parse_line_2
move $t1, $t0
sw $t1, -12($fp)
lw $t2, -68($fp)
# Moving local_read_input_Parse_internal_15 to local_read_input_Parse_internal_16
move $t2, $t0
sw $t2, -68($fp)
lw $t3, -20($fp)
# Moving local_read_input_Parse_internal_16 to local_read_input_Parse_internal_4
move $t3, $t2
sw $t3, -20($fp)
sw $t0, -64($fp)
sw $t1, -12($fp)
sw $t2, -68($fp)
sw $t3, -20($fp)
j start__446
end__446:
lw $t0, -4($fp)
lw $t1, -72($fp)
# Moving local_read_input_Parse_g_0 to local_read_input_Parse_internal_17
move $t1, $t0
sw $t1, -72($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -72($fp)
# Removing all locals from stack
addiu $sp, $sp, 76
jr $ra


function_parse_line_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value s
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_parse_line_Parse_v_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_rest_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_succ_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_rest_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_weight_12 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_rest_13 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_14 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_15 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_16 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_17 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_18 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_19 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_parse_line_Parse_internal_20 to the stack
addiu $sp, $sp, -4
lw $t0, -12($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 20
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Vertice
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 20
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 56
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_outgoing_Vertice in t9
lw $t9, 88($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_number_Vertice in t9
lw $t9, 92($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_init_Vertice in t9
lw $t9, 96($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
# Save the direction of the method function_add_out_Vertice in t9
lw $t9, 100($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 44($v0)
# Save the direction of the method function_print_Vertice in t9
lw $t9, 104($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 48($v0)
# Save the direction of the method function_Vertice_Vertice in t9
lw $t9, 84($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 52($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 24($t8)
sw $v0, 12($t0)
# Static Dispatch of the method Vertice
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# This function will consume the arguments
jal function_Vertice_Vertice
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_a2i_Parse
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
sw $t1, -4($fp)
sw $t2, -16($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
lw $t2, -20($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_init_Vertice
lw $t8, 40($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -12($fp)
sw $t2, -20($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -20($fp)
# saves the return value
move $t0, $v0
lw $t1, -8($fp)
# Moving local_parse_line_Parse_internal_3 to local_parse_line_Parse_v_0
move $t1, $t0
sw $t1, -8($fp)
lw $t2, -24($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t2, $v0
sw $t0, -20($fp)
sw $t1, -8($fp)
sw $t2, -24($fp)
start__504:
lw $t0, -4($fp)
lw $t1, -36($fp)
# local_parse_line_Parse_rest_7 <- GET self . rest
lw $t1, 20($t0)
lw $t2, -40($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -36($fp)
sw $t2, -40($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -40($fp)
# saves the return value
move $t0, $v0
lw $t1, -32($fp)
# local_parse_line_Parse_internal_6 <- local_parse_line_Parse_internal_8 = 0
li $t9, 0
seq $t1, $t0, $t9
lw $t2, -28($fp)
# local_parse_line_Parse_internal_5 <- not local_parse_line_Parse_internal_6
beqz $t1, false_11
li $t2, 0
j end_11
false_11:
li $t2, 1
end_11:
# If not local_parse_line_Parse_internal_5 goto end__504
sw $t0, -40($fp)
sw $t1, -32($fp)
sw $t2, -28($fp)
beqz $t2, end__504
lw $t0, -4($fp)
lw $t1, -48($fp)
# local_parse_line_Parse_rest_10 <- GET self . rest
lw $t1, 20($t0)
lw $t2, -52($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_a2i_Parse
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -48($fp)
sw $t2, -52($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -52($fp)
# saves the return value
move $t0, $v0
lw $t1, -44($fp)
# Moving local_parse_line_Parse_internal_11 to local_parse_line_Parse_succ_9
move $t1, $t0
sw $t1, -44($fp)
lw $t2, -4($fp)
lw $t3, -60($fp)
# local_parse_line_Parse_rest_13 <- GET self . rest
lw $t3, 20($t2)
lw $t4, -64($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_a2i_Parse
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -52($fp)
sw $t1, -44($fp)
sw $t2, -4($fp)
sw $t3, -60($fp)
sw $t4, -64($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -64($fp)
# saves the return value
move $t0, $v0
lw $t1, -56($fp)
# Moving local_parse_line_Parse_internal_14 to local_parse_line_Parse_weight_12
move $t1, $t0
sw $t1, -56($fp)
lw $t2, -68($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 24
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Edge
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 24
sw $t9, 4($v0)
move $t2, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 44
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_out_string_IO in t9
lw $t9, 16($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_out_int_IO in t9
lw $t9, 20($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
# Save the direction of the method function_in_string_IO in t9
lw $t9, 28($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 24($v0)
# Save the direction of the method function_in_int_IO in t9
lw $t9, 24($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 28($v0)
# Save the direction of the method function_init_Edge in t9
lw $t9, 112($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 32($v0)
# Save the direction of the method function_print_Edge in t9
lw $t9, 116($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 36($v0)
# Save the direction of the method function_Edge_Edge in t9
lw $t9, 108($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 40($v0)
sw $v0, 8($t2)
# Adding Type Info addr
la $t8, types
lw $v0, 28($t8)
sw $v0, 12($t2)
# Static Dispatch of the method Edge
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -64($fp)
sw $t1, -56($fp)
sw $t2, -68($fp)
# This function will consume the arguments
jal function_Edge_Edge
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -68($fp)
# saves the return value
move $t0, $v0
lw $t1, -8($fp)
lw $t2, -72($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_number_Vertice
lw $t8, 36($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -68($fp)
sw $t1, -8($fp)
sw $t2, -72($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -72($fp)
# saves the return value
move $t0, $v0
lw $t1, -68($fp)
lw $t2, -76($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_init_Edge
lw $t8, 32($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t3, -56($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t4, -44($fp)
sw $t4, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -72($fp)
sw $t1, -68($fp)
sw $t2, -76($fp)
sw $t3, -56($fp)
sw $t4, -44($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -76($fp)
# saves the return value
move $t0, $v0
lw $t1, -8($fp)
lw $t2, -80($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_add_out_Vertice
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -76($fp)
sw $t1, -8($fp)
sw $t2, -80($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -80($fp)
# saves the return value
move $t0, $v0
lw $t1, -84($fp)
# Moving local_parse_line_Parse_internal_18 to local_parse_line_Parse_internal_19
move $t1, $t0
sw $t1, -84($fp)
lw $t2, -24($fp)
# Moving local_parse_line_Parse_internal_19 to local_parse_line_Parse_internal_4
move $t2, $t1
sw $t2, -24($fp)
sw $t0, -80($fp)
sw $t1, -84($fp)
sw $t2, -24($fp)
j start__504
end__504:
lw $t0, -8($fp)
lw $t1, -88($fp)
# Moving local_parse_line_Parse_v_0 to local_parse_line_Parse_internal_20
move $t1, $t0
sw $t1, -88($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -88($fp)
# Removing all locals from stack
addiu $sp, $sp, 92
jr $ra


function_c2i_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value char
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_c2i_Parse_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_12 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_13 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_14 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_15 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_16 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_17 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_18 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_19 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_20 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_21 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_22 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_23 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_24 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_25 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_26 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_27 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_28 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_29 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_30 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_c2i_Parse_internal_31 to the stack
addiu $sp, $sp, -4
lw $t0, -12($fp)
# Saves in local_c2i_Parse_internal_1 data_9
la $t0, data_9
lw $t1, -0($fp)
lw $t2, -8($fp)
# local_c2i_Parse_internal_0 <- char = local_c2i_Parse_internal_1
move $t8, $t1
move $t9, $t0
loop_12:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_12
beqz $a1, mismatch_12
seq $v0, $a0, $a1
beqz $v0, mismatch_12
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_12
mismatch_12:
li $v0, 0
j end_12
check_12:
bnez $a1, mismatch_12
li $v0, 1
end_12:
move $t2, $v0
# If local_c2i_Parse_internal_0 goto true__563
sw $t0, -12($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
bnez $t2, true__563
lw $t0, -24($fp)
# Saves in local_c2i_Parse_internal_4 data_10
la $t0, data_10
lw $t1, -0($fp)
lw $t2, -20($fp)
# local_c2i_Parse_internal_3 <- char = local_c2i_Parse_internal_4
move $t8, $t1
move $t9, $t0
loop_13:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_13
beqz $a1, mismatch_13
seq $v0, $a0, $a1
beqz $v0, mismatch_13
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_13
mismatch_13:
li $v0, 0
j end_13
check_13:
bnez $a1, mismatch_13
li $v0, 1
end_13:
move $t2, $v0
# If local_c2i_Parse_internal_3 goto true__570
sw $t0, -24($fp)
sw $t1, -0($fp)
sw $t2, -20($fp)
bnez $t2, true__570
lw $t0, -36($fp)
# Saves in local_c2i_Parse_internal_7 data_11
la $t0, data_11
lw $t1, -0($fp)
lw $t2, -32($fp)
# local_c2i_Parse_internal_6 <- char = local_c2i_Parse_internal_7
move $t8, $t1
move $t9, $t0
loop_14:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_14
beqz $a1, mismatch_14
seq $v0, $a0, $a1
beqz $v0, mismatch_14
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_14
mismatch_14:
li $v0, 0
j end_14
check_14:
bnez $a1, mismatch_14
li $v0, 1
end_14:
move $t2, $v0
# If local_c2i_Parse_internal_6 goto true__577
sw $t0, -36($fp)
sw $t1, -0($fp)
sw $t2, -32($fp)
bnez $t2, true__577
lw $t0, -48($fp)
# Saves in local_c2i_Parse_internal_10 data_12
la $t0, data_12
lw $t1, -0($fp)
lw $t2, -44($fp)
# local_c2i_Parse_internal_9 <- char = local_c2i_Parse_internal_10
move $t8, $t1
move $t9, $t0
loop_15:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_15
beqz $a1, mismatch_15
seq $v0, $a0, $a1
beqz $v0, mismatch_15
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_15
mismatch_15:
li $v0, 0
j end_15
check_15:
bnez $a1, mismatch_15
li $v0, 1
end_15:
move $t2, $v0
# If local_c2i_Parse_internal_9 goto true__584
sw $t0, -48($fp)
sw $t1, -0($fp)
sw $t2, -44($fp)
bnez $t2, true__584
lw $t0, -60($fp)
# Saves in local_c2i_Parse_internal_13 data_13
la $t0, data_13
lw $t1, -0($fp)
lw $t2, -56($fp)
# local_c2i_Parse_internal_12 <- char = local_c2i_Parse_internal_13
move $t8, $t1
move $t9, $t0
loop_16:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_16
beqz $a1, mismatch_16
seq $v0, $a0, $a1
beqz $v0, mismatch_16
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_16
mismatch_16:
li $v0, 0
j end_16
check_16:
bnez $a1, mismatch_16
li $v0, 1
end_16:
move $t2, $v0
# If local_c2i_Parse_internal_12 goto true__591
sw $t0, -60($fp)
sw $t1, -0($fp)
sw $t2, -56($fp)
bnez $t2, true__591
lw $t0, -72($fp)
# Saves in local_c2i_Parse_internal_16 data_14
la $t0, data_14
lw $t1, -0($fp)
lw $t2, -68($fp)
# local_c2i_Parse_internal_15 <- char = local_c2i_Parse_internal_16
move $t8, $t1
move $t9, $t0
loop_17:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_17
beqz $a1, mismatch_17
seq $v0, $a0, $a1
beqz $v0, mismatch_17
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_17
mismatch_17:
li $v0, 0
j end_17
check_17:
bnez $a1, mismatch_17
li $v0, 1
end_17:
move $t2, $v0
# If local_c2i_Parse_internal_15 goto true__598
sw $t0, -72($fp)
sw $t1, -0($fp)
sw $t2, -68($fp)
bnez $t2, true__598
lw $t0, -84($fp)
# Saves in local_c2i_Parse_internal_19 data_15
la $t0, data_15
lw $t1, -0($fp)
lw $t2, -80($fp)
# local_c2i_Parse_internal_18 <- char = local_c2i_Parse_internal_19
move $t8, $t1
move $t9, $t0
loop_18:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_18
beqz $a1, mismatch_18
seq $v0, $a0, $a1
beqz $v0, mismatch_18
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_18
mismatch_18:
li $v0, 0
j end_18
check_18:
bnez $a1, mismatch_18
li $v0, 1
end_18:
move $t2, $v0
# If local_c2i_Parse_internal_18 goto true__605
sw $t0, -84($fp)
sw $t1, -0($fp)
sw $t2, -80($fp)
bnez $t2, true__605
lw $t0, -96($fp)
# Saves in local_c2i_Parse_internal_22 data_16
la $t0, data_16
lw $t1, -0($fp)
lw $t2, -92($fp)
# local_c2i_Parse_internal_21 <- char = local_c2i_Parse_internal_22
move $t8, $t1
move $t9, $t0
loop_19:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_19
beqz $a1, mismatch_19
seq $v0, $a0, $a1
beqz $v0, mismatch_19
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_19
mismatch_19:
li $v0, 0
j end_19
check_19:
bnez $a1, mismatch_19
li $v0, 1
end_19:
move $t2, $v0
# If local_c2i_Parse_internal_21 goto true__612
sw $t0, -96($fp)
sw $t1, -0($fp)
sw $t2, -92($fp)
bnez $t2, true__612
lw $t0, -108($fp)
# Saves in local_c2i_Parse_internal_25 data_17
la $t0, data_17
lw $t1, -0($fp)
lw $t2, -104($fp)
# local_c2i_Parse_internal_24 <- char = local_c2i_Parse_internal_25
move $t8, $t1
move $t9, $t0
loop_20:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_20
beqz $a1, mismatch_20
seq $v0, $a0, $a1
beqz $v0, mismatch_20
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_20
mismatch_20:
li $v0, 0
j end_20
check_20:
bnez $a1, mismatch_20
li $v0, 1
end_20:
move $t2, $v0
# If local_c2i_Parse_internal_24 goto true__619
sw $t0, -108($fp)
sw $t1, -0($fp)
sw $t2, -104($fp)
bnez $t2, true__619
lw $t0, -120($fp)
# Saves in local_c2i_Parse_internal_28 data_18
la $t0, data_18
lw $t1, -0($fp)
lw $t2, -116($fp)
# local_c2i_Parse_internal_27 <- char = local_c2i_Parse_internal_28
move $t8, $t1
move $t9, $t0
loop_21:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_21
beqz $a1, mismatch_21
seq $v0, $a0, $a1
beqz $v0, mismatch_21
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_21
mismatch_21:
li $v0, 0
j end_21
check_21:
bnez $a1, mismatch_21
li $v0, 1
end_21:
move $t2, $v0
# If local_c2i_Parse_internal_27 goto true__626
sw $t0, -120($fp)
sw $t1, -0($fp)
sw $t2, -116($fp)
bnez $t2, true__626
lw $t0, -4($fp)
lw $t1, -128($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_abort_Object
lw $t8, 4($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -128($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -128($fp)
# saves the return value
move $t0, $v0
lw $t1, -132($fp)
# Moving 0 to local_c2i_Parse_internal_31
li $t1, 0
sw $t1, -132($fp)
lw $t2, -124($fp)
# Moving local_c2i_Parse_internal_31 to local_c2i_Parse_internal_29
move $t2, $t1
sw $t2, -124($fp)
sw $t0, -128($fp)
sw $t1, -132($fp)
sw $t2, -124($fp)
j end__626
true__626:
lw $t0, -124($fp)
# Moving 9 to local_c2i_Parse_internal_29
li $t0, 9
sw $t0, -124($fp)
sw $t0, -124($fp)
end__626:
lw $t0, -124($fp)
lw $t1, -112($fp)
# Moving local_c2i_Parse_internal_29 to local_c2i_Parse_internal_26
move $t1, $t0
sw $t1, -112($fp)
sw $t0, -124($fp)
sw $t1, -112($fp)
j end__619
true__619:
lw $t0, -112($fp)
# Moving 8 to local_c2i_Parse_internal_26
li $t0, 8
sw $t0, -112($fp)
sw $t0, -112($fp)
end__619:
lw $t0, -112($fp)
lw $t1, -100($fp)
# Moving local_c2i_Parse_internal_26 to local_c2i_Parse_internal_23
move $t1, $t0
sw $t1, -100($fp)
sw $t0, -112($fp)
sw $t1, -100($fp)
j end__612
true__612:
lw $t0, -100($fp)
# Moving 7 to local_c2i_Parse_internal_23
li $t0, 7
sw $t0, -100($fp)
sw $t0, -100($fp)
end__612:
lw $t0, -100($fp)
lw $t1, -88($fp)
# Moving local_c2i_Parse_internal_23 to local_c2i_Parse_internal_20
move $t1, $t0
sw $t1, -88($fp)
sw $t0, -100($fp)
sw $t1, -88($fp)
j end__605
true__605:
lw $t0, -88($fp)
# Moving 6 to local_c2i_Parse_internal_20
li $t0, 6
sw $t0, -88($fp)
sw $t0, -88($fp)
end__605:
lw $t0, -88($fp)
lw $t1, -76($fp)
# Moving local_c2i_Parse_internal_20 to local_c2i_Parse_internal_17
move $t1, $t0
sw $t1, -76($fp)
sw $t0, -88($fp)
sw $t1, -76($fp)
j end__598
true__598:
lw $t0, -76($fp)
# Moving 5 to local_c2i_Parse_internal_17
li $t0, 5
sw $t0, -76($fp)
sw $t0, -76($fp)
end__598:
lw $t0, -76($fp)
lw $t1, -64($fp)
# Moving local_c2i_Parse_internal_17 to local_c2i_Parse_internal_14
move $t1, $t0
sw $t1, -64($fp)
sw $t0, -76($fp)
sw $t1, -64($fp)
j end__591
true__591:
lw $t0, -64($fp)
# Moving 4 to local_c2i_Parse_internal_14
li $t0, 4
sw $t0, -64($fp)
sw $t0, -64($fp)
end__591:
lw $t0, -64($fp)
lw $t1, -52($fp)
# Moving local_c2i_Parse_internal_14 to local_c2i_Parse_internal_11
move $t1, $t0
sw $t1, -52($fp)
sw $t0, -64($fp)
sw $t1, -52($fp)
j end__584
true__584:
lw $t0, -52($fp)
# Moving 3 to local_c2i_Parse_internal_11
li $t0, 3
sw $t0, -52($fp)
sw $t0, -52($fp)
end__584:
lw $t0, -52($fp)
lw $t1, -40($fp)
# Moving local_c2i_Parse_internal_11 to local_c2i_Parse_internal_8
move $t1, $t0
sw $t1, -40($fp)
sw $t0, -52($fp)
sw $t1, -40($fp)
j end__577
true__577:
lw $t0, -40($fp)
# Moving 2 to local_c2i_Parse_internal_8
li $t0, 2
sw $t0, -40($fp)
sw $t0, -40($fp)
end__577:
lw $t0, -40($fp)
lw $t1, -28($fp)
# Moving local_c2i_Parse_internal_8 to local_c2i_Parse_internal_5
move $t1, $t0
sw $t1, -28($fp)
sw $t0, -40($fp)
sw $t1, -28($fp)
j end__570
true__570:
lw $t0, -28($fp)
# Moving 1 to local_c2i_Parse_internal_5
li $t0, 1
sw $t0, -28($fp)
sw $t0, -28($fp)
end__570:
lw $t0, -28($fp)
lw $t1, -16($fp)
# Moving local_c2i_Parse_internal_5 to local_c2i_Parse_internal_2
move $t1, $t0
sw $t1, -16($fp)
sw $t0, -28($fp)
sw $t1, -16($fp)
j end__563
true__563:
lw $t0, -16($fp)
# Moving 0 to local_c2i_Parse_internal_2
li $t0, 0
sw $t0, -16($fp)
sw $t0, -16($fp)
end__563:
lw $t0, -16($fp)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
# Removing all locals from stack
addiu $sp, $sp, 136
jr $ra


function_a2i_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value s
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_a2i_Parse_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_12 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_13 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_14 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_15 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_16 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_17 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_18 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_19 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_Parse_internal_20 to the stack
addiu $sp, $sp, -4
lw $t0, -12($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
lw $t1, -8($fp)
# local_a2i_Parse_internal_0 <- local_a2i_Parse_internal_1 = 0
li $t9, 0
seq $t1, $t0, $t9
# If local_a2i_Parse_internal_0 goto true__691
sw $t0, -12($fp)
sw $t1, -8($fp)
bnez $t1, true__691
lw $t0, -24($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
li $t9, 0
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -24($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -24($fp)
# saves the return value
move $t0, $v0
lw $t1, -28($fp)
# Saves in local_a2i_Parse_internal_5 data_19
la $t1, data_19
lw $t2, -20($fp)
# local_a2i_Parse_internal_3 <- local_a2i_Parse_internal_4 = local_a2i_Parse_internal_5
move $t8, $t0
move $t9, $t1
loop_22:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_22
beqz $a1, mismatch_22
seq $v0, $a0, $a1
beqz $v0, mismatch_22
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_22
mismatch_22:
li $v0, 0
j end_22
check_22:
bnez $a1, mismatch_22
li $v0, 1
end_22:
move $t2, $v0
# If local_a2i_Parse_internal_3 goto true__703
sw $t0, -24($fp)
sw $t1, -28($fp)
sw $t2, -20($fp)
bnez $t2, true__703
lw $t0, -40($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
li $t9, 0
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -40($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -40($fp)
# saves the return value
move $t0, $v0
lw $t1, -44($fp)
# Saves in local_a2i_Parse_internal_9 data_20
la $t1, data_20
lw $t2, -36($fp)
# local_a2i_Parse_internal_7 <- local_a2i_Parse_internal_8 = local_a2i_Parse_internal_9
move $t8, $t0
move $t9, $t1
loop_23:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_23
beqz $a1, mismatch_23
seq $v0, $a0, $a1
beqz $v0, mismatch_23
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_23
mismatch_23:
li $v0, 0
j end_23
check_23:
bnez $a1, mismatch_23
li $v0, 1
end_23:
move $t2, $v0
# If local_a2i_Parse_internal_7 goto true__715
sw $t0, -40($fp)
sw $t1, -44($fp)
sw $t2, -36($fp)
bnez $t2, true__715
lw $t0, -4($fp)
lw $t1, -52($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t0)
# Saves in t8 the direction of function_a2i_aux_Parse
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -0($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -52($fp)
sw $t2, -0($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -52($fp)
# saves the return value
move $t0, $v0
lw $t1, -48($fp)
# Moving local_a2i_Parse_internal_11 to local_a2i_Parse_internal_10
move $t1, $t0
sw $t1, -48($fp)
sw $t0, -52($fp)
sw $t1, -48($fp)
j end__715
true__715:
lw $t0, -60($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -60($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -60($fp)
# saves the return value
move $t0, $v0
lw $t1, -56($fp)
# local_a2i_Parse_internal_12 <- local_a2i_Parse_internal_13 - 1
addi $t1, $t0, -1
lw $t2, -64($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -60($fp)
sw $t1, -56($fp)
sw $t2, -64($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -64($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -68($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_a2i_Parse
lw $t8, 44($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -64($fp)
sw $t1, -4($fp)
sw $t2, -68($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -68($fp)
# saves the return value
move $t0, $v0
lw $t1, -48($fp)
# Moving local_a2i_Parse_internal_15 to local_a2i_Parse_internal_10
move $t1, $t0
sw $t1, -48($fp)
sw $t0, -68($fp)
sw $t1, -48($fp)
end__715:
lw $t0, -48($fp)
lw $t1, -32($fp)
# Moving local_a2i_Parse_internal_10 to local_a2i_Parse_internal_6
move $t1, $t0
sw $t1, -32($fp)
sw $t0, -48($fp)
sw $t1, -32($fp)
j end__703
true__703:
lw $t0, -80($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t1, -0($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -80($fp)
sw $t1, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -80($fp)
# saves the return value
move $t0, $v0
lw $t1, -76($fp)
# local_a2i_Parse_internal_17 <- local_a2i_Parse_internal_18 - 1
addi $t1, $t0, -1
lw $t2, -84($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -80($fp)
sw $t1, -76($fp)
sw $t2, -84($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -84($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -88($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_a2i_aux_Parse
lw $t8, 48($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -84($fp)
sw $t1, -4($fp)
sw $t2, -88($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -88($fp)
# saves the return value
move $t0, $v0
lw $t1, -72($fp)
# local_a2i_Parse_internal_16 <- ~local_a2i_Parse_internal_20
not $t1, $t0
addi $t1, $t1, 1
lw $t2, -32($fp)
# Moving local_a2i_Parse_internal_16 to local_a2i_Parse_internal_6
move $t2, $t1
sw $t2, -32($fp)
sw $t0, -88($fp)
sw $t1, -72($fp)
sw $t2, -32($fp)
end__703:
lw $t0, -32($fp)
lw $t1, -16($fp)
# Moving local_a2i_Parse_internal_6 to local_a2i_Parse_internal_2
move $t1, $t0
sw $t1, -16($fp)
sw $t0, -32($fp)
sw $t1, -16($fp)
j end__691
true__691:
lw $t0, -16($fp)
# Moving 0 to local_a2i_Parse_internal_2
li $t0, 0
sw $t0, -16($fp)
sw $t0, -16($fp)
end__691:
lw $t0, -16($fp)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
# Removing all locals from stack
addiu $sp, $sp, 92
jr $ra


function_a2i_aux_Parse:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value s
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_a2i_aux_Parse_int_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_j_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_i_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_4 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_5 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_c_6 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_7 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_8 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_9 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_10 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_11 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_12 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_13 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_14 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_15 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_16 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_17 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_18 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_19 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_20 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_21 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_22 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_23 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_24 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_25 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_26 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_27 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_28 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_29 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_30 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_31 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_32 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_33 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_34 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_35 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_a2i_aux_Parse_internal_36 to the stack
addiu $sp, $sp, -4
lw $t0, -8($fp)
# Moving 0 to local_a2i_aux_Parse_int_0
li $t0, 0
sw $t0, -8($fp)
lw $t1, -16($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t2, -0($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -16($fp)
sw $t2, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -12($fp)
# Moving local_a2i_aux_Parse_internal_2 to local_a2i_aux_Parse_j_1
move $t1, $t0
sw $t1, -12($fp)
lw $t2, -20($fp)
# Moving 0 to local_a2i_aux_Parse_i_3
li $t2, 0
sw $t2, -20($fp)
lw $t3, -24($fp)
# Initialize void node
li $a0, 4
li $v0, 9
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_Void
sw $t9, 0($v0)
move $t3, $v0
sw $t0, -16($fp)
sw $t1, -12($fp)
sw $t2, -20($fp)
sw $t3, -24($fp)
start__776:
lw $t0, -20($fp)
lw $t1, -12($fp)
lw $t2, -28($fp)
# local_a2i_aux_Parse_internal_5 <- local_a2i_aux_Parse_i_3 < local_a2i_aux_Parse_j_1
slt $t2, $t0, $t1
# If not local_a2i_aux_Parse_internal_5 goto end__776
sw $t0, -20($fp)
sw $t1, -12($fp)
sw $t2, -28($fp)
beqz $t2, end__776
lw $t0, -36($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t1, -20($fp)
sw $t1, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t2, -0($fp)
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -36($fp)
sw $t1, -20($fp)
sw $t2, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -36($fp)
# saves the return value
move $t0, $v0
lw $t1, -32($fp)
# Moving local_a2i_aux_Parse_internal_7 to local_a2i_aux_Parse_c_6
move $t1, $t0
sw $t1, -32($fp)
lw $t2, -44($fp)
# Saves in local_a2i_aux_Parse_internal_9 data_21
la $t2, data_21
lw $t3, -40($fp)
# local_a2i_aux_Parse_internal_8 <- local_a2i_aux_Parse_c_6 = local_a2i_aux_Parse_internal_9
move $t8, $t1
move $t9, $t2
loop_24:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_24
beqz $a1, mismatch_24
seq $v0, $a0, $a1
beqz $v0, mismatch_24
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_24
mismatch_24:
li $v0, 0
j end_24
check_24:
bnez $a1, mismatch_24
li $v0, 1
end_24:
move $t3, $v0
# If local_a2i_aux_Parse_internal_8 goto true__794
sw $t0, -36($fp)
sw $t1, -32($fp)
sw $t2, -44($fp)
sw $t3, -40($fp)
bnez $t3, true__794
lw $t0, -56($fp)
# Saves in local_a2i_aux_Parse_internal_12 data_22
la $t0, data_22
lw $t1, -32($fp)
lw $t2, -52($fp)
# local_a2i_aux_Parse_internal_11 <- local_a2i_aux_Parse_c_6 = local_a2i_aux_Parse_internal_12
move $t8, $t1
move $t9, $t0
loop_25:
lb $a0, ($t8)
lb $a1, ($t9)
beqz $a0, check_25
beqz $a1, mismatch_25
seq $v0, $a0, $a1
beqz $v0, mismatch_25
addi $t8, $t8, 1
addi $t9, $t9, 1
j loop_25
mismatch_25:
li $v0, 0
j end_25
check_25:
bnez $a1, mismatch_25
li $v0, 1
end_25:
move $t2, $v0
# If local_a2i_aux_Parse_internal_11 goto true__801
sw $t0, -56($fp)
sw $t1, -32($fp)
sw $t2, -52($fp)
bnez $t2, true__801
lw $t0, -8($fp)
lw $t1, -68($fp)
# local_a2i_aux_Parse_internal_15 <- local_a2i_aux_Parse_int_0 * 10
li $t9, 10
mult $t0, $t9
mflo $t1
lw $t2, -72($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
li $t9, 1
sw $t9, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t3, -20($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t4, -0($fp)
sw $t4, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -68($fp)
sw $t2, -72($fp)
sw $t3, -20($fp)
sw $t4, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -72($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
lw $t2, -76($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_c2i_Parse
lw $t8, 40($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t0, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -72($fp)
sw $t1, -4($fp)
sw $t2, -76($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -76($fp)
# saves the return value
move $t0, $v0
lw $t1, -68($fp)
lw $t2, -64($fp)
# local_a2i_aux_Parse_internal_14 <- local_a2i_aux_Parse_internal_15 + local_a2i_aux_Parse_internal_17
add $t2, $t1, $t0
lw $t3, -8($fp)
# Moving local_a2i_aux_Parse_internal_14 to local_a2i_aux_Parse_int_0
move $t3, $t2
sw $t3, -8($fp)
lw $t4, -20($fp)
lw $t5, -80($fp)
# local_a2i_aux_Parse_internal_18 <- local_a2i_aux_Parse_i_3 + 1
addi $t5, $t4, 1
# Moving local_a2i_aux_Parse_internal_18 to local_a2i_aux_Parse_i_3
move $t4, $t5
sw $t4, -20($fp)
lw $t6, -12($fp)
lw $t7, -84($fp)
# local_a2i_aux_Parse_internal_19 <- local_a2i_aux_Parse_i_3 = local_a2i_aux_Parse_j_1
seq $t7, $t4, $t6
# If local_a2i_aux_Parse_internal_19 goto true__821
sw $t0, -76($fp)
sw $t1, -68($fp)
sw $t2, -64($fp)
sw $t3, -8($fp)
sw $t4, -20($fp)
sw $t5, -80($fp)
sw $t6, -12($fp)
sw $t7, -84($fp)
bnez $t7, true__821
lw $t0, -92($fp)
# Saves in local_a2i_aux_Parse_internal_21 data_23
la $t0, data_23
lw $t1, -88($fp)
# Moving local_a2i_aux_Parse_internal_21 to local_a2i_aux_Parse_internal_20
move $t1, $t0
sw $t1, -88($fp)
sw $t0, -92($fp)
sw $t1, -88($fp)
j end__821
true__821:
lw $t0, -96($fp)
# Saves in local_a2i_aux_Parse_internal_22 data_24
la $t0, data_24
lw $t1, -4($fp)
# self . rest <- SET local_a2i_aux_Parse_internal_22
sw $t0, 20($t1)
lw $t2, -88($fp)
# Moving local_a2i_aux_Parse_internal_22 to local_a2i_aux_Parse_internal_20
move $t2, $t0
sw $t2, -88($fp)
sw $t0, -96($fp)
sw $t1, -4($fp)
sw $t2, -88($fp)
end__821:
lw $t0, -88($fp)
lw $t1, -100($fp)
# Moving local_a2i_aux_Parse_internal_20 to local_a2i_aux_Parse_internal_23
move $t1, $t0
sw $t1, -100($fp)
lw $t2, -60($fp)
# Moving local_a2i_aux_Parse_internal_23 to local_a2i_aux_Parse_internal_13
move $t2, $t1
sw $t2, -60($fp)
sw $t0, -88($fp)
sw $t1, -100($fp)
sw $t2, -60($fp)
j end__801
true__801:
lw $t0, -20($fp)
lw $t1, -104($fp)
# local_a2i_aux_Parse_internal_24 <- local_a2i_aux_Parse_i_3 + 1
addi $t1, $t0, 1
lw $t2, -116($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -20($fp)
sw $t1, -104($fp)
sw $t2, -116($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -116($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
lw $t2, -112($fp)
# local_a2i_aux_Parse_internal_26 <- local_a2i_aux_Parse_internal_27 - local_a2i_aux_Parse_i_3
sub $t2, $t0, $t1
lw $t3, -108($fp)
# local_a2i_aux_Parse_internal_25 <- local_a2i_aux_Parse_internal_26 - 1
addi $t3, $t2, -1
lw $t4, -120($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t5, -104($fp)
sw $t5, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t6, -0($fp)
sw $t6, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -116($fp)
sw $t1, -20($fp)
sw $t2, -112($fp)
sw $t3, -108($fp)
sw $t4, -120($fp)
sw $t5, -104($fp)
sw $t6, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -120($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# self . rest <- SET local_a2i_aux_Parse_internal_28
sw $t0, 20($t1)
lw $t2, -12($fp)
lw $t3, -20($fp)
# Moving local_a2i_aux_Parse_j_1 to local_a2i_aux_Parse_i_3
move $t3, $t2
sw $t3, -20($fp)
lw $t4, -124($fp)
# Moving local_a2i_aux_Parse_j_1 to local_a2i_aux_Parse_internal_29
move $t4, $t2
sw $t4, -124($fp)
lw $t5, -60($fp)
# Moving local_a2i_aux_Parse_internal_29 to local_a2i_aux_Parse_internal_13
move $t5, $t4
sw $t5, -60($fp)
sw $t0, -120($fp)
sw $t1, -4($fp)
sw $t2, -12($fp)
sw $t3, -20($fp)
sw $t4, -124($fp)
sw $t5, -60($fp)
end__801:
lw $t0, -60($fp)
lw $t1, -48($fp)
# Moving local_a2i_aux_Parse_internal_13 to local_a2i_aux_Parse_internal_10
move $t1, $t0
sw $t1, -48($fp)
sw $t0, -60($fp)
sw $t1, -48($fp)
j end__794
true__794:
lw $t0, -20($fp)
lw $t1, -128($fp)
# local_a2i_aux_Parse_internal_30 <- local_a2i_aux_Parse_i_3 + 1
addi $t1, $t0, 1
lw $t2, -140($fp)
# Static Dispatch of the method length
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
lw $t3, -0($fp)
sw $t3, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -20($fp)
sw $t1, -128($fp)
sw $t2, -140($fp)
sw $t3, -0($fp)
# This function will consume the arguments
jal function_length_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -140($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
lw $t2, -136($fp)
# local_a2i_aux_Parse_internal_32 <- local_a2i_aux_Parse_internal_33 - local_a2i_aux_Parse_i_3
sub $t2, $t0, $t1
lw $t3, -132($fp)
# local_a2i_aux_Parse_internal_31 <- local_a2i_aux_Parse_internal_32 - 1
addi $t3, $t2, -1
lw $t4, -144($fp)
# Static Dispatch of the method substr
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t3, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t5, -128($fp)
sw $t5, ($sp)
addiu $sp, $sp, -4
# The rest of the arguments are push into the stack
lw $t6, -0($fp)
sw $t6, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -140($fp)
sw $t1, -20($fp)
sw $t2, -136($fp)
sw $t3, -132($fp)
sw $t4, -144($fp)
sw $t5, -128($fp)
sw $t6, -0($fp)
# This function will consume the arguments
jal function_substr_String
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -144($fp)
# saves the return value
move $t0, $v0
lw $t1, -4($fp)
# self . rest <- SET local_a2i_aux_Parse_internal_34
sw $t0, 20($t1)
lw $t2, -12($fp)
lw $t3, -20($fp)
# Moving local_a2i_aux_Parse_j_1 to local_a2i_aux_Parse_i_3
move $t3, $t2
sw $t3, -20($fp)
lw $t4, -148($fp)
# Moving local_a2i_aux_Parse_j_1 to local_a2i_aux_Parse_internal_35
move $t4, $t2
sw $t4, -148($fp)
lw $t5, -48($fp)
# Moving local_a2i_aux_Parse_internal_35 to local_a2i_aux_Parse_internal_10
move $t5, $t4
sw $t5, -48($fp)
sw $t0, -144($fp)
sw $t1, -4($fp)
sw $t2, -12($fp)
sw $t3, -20($fp)
sw $t4, -148($fp)
sw $t5, -48($fp)
end__794:
lw $t0, -48($fp)
lw $t1, -24($fp)
# Moving local_a2i_aux_Parse_internal_10 to local_a2i_aux_Parse_internal_4
move $t1, $t0
sw $t1, -24($fp)
sw $t0, -48($fp)
sw $t1, -24($fp)
j start__776
end__776:
lw $t0, -8($fp)
lw $t1, -152($fp)
# Moving local_a2i_aux_Parse_int_0 to local_a2i_aux_Parse_internal_36
move $t1, $t0
sw $t1, -152($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -152($fp)
# Removing all locals from stack
addiu $sp, $sp, 156
jr $ra


function_Main_Main:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_Main_Main_internal_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Main_Main_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Main_Main_internal_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_Main_Main_internal_3 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# Syscall to allocate memory of the object entry in heap
li $v0, 9
li $a0, 12
syscall
# Loads the name of the variable and saves the name like the first field
la $t9, type_BoolOp
sw $t9, 0($v0)
# Saves the size of the node
li $t9, 12
sw $t9, 4($v0)
move $t0, $v0
# Allocate dispatch table in the heap
li $v0, 9
li $a0, 24
syscall
# I save the offset of every one of the methods of this type
# Save the direction of methods
la $t8, methods
# Save the direction of the method function_abort_Object in t9
lw $t9, 4($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 4($v0)
# Save the direction of the method function_type_name_Object in t9
lw $t9, 8($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 8($v0)
# Save the direction of the method function_copy_Object in t9
lw $t9, 12($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 12($v0)
# Save the direction of the method function_and_BoolOp in t9
lw $t9, 252($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 16($v0)
# Save the direction of the method function_or_BoolOp in t9
lw $t9, 256($t8)
# Save the direction of the method in his position in the dispatch table
sw $t9, 20($v0)
sw $v0, 8($t0)
# Adding Type Info addr
la $t8, types
lw $v0, 56($t8)
sw $v0, 12($t0)
lw $t1, -0($fp)
# self . boolop <- SET local_Main_Main_internal_0
sw $t0, 16($t1)
lw $t2, -8($fp)
# Saves in local_Main_Main_internal_1 data_25
la $t2, data_25
# self . rest <- SET local_Main_Main_internal_1
sw $t2, 20($t1)
lw $t3, -12($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_read_input_Parse
lw $t8, 32($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -4($fp)
sw $t1, -0($fp)
sw $t2, -8($fp)
sw $t3, -12($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -12($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
# self . g <- SET local_Main_Main_internal_2
sw $t0, 24($t1)
lw $t2, -16($fp)
# Moving self to local_Main_Main_internal_3
move $t2, $t1
sw $t2, -16($fp)
move $v0, $t2
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
sw $t1, -0($fp)
sw $t2, -16($fp)
# Removing all locals from stack
addiu $sp, $sp, 20
jr $ra


function_main_Main:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_main_Main_g_0 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_main_Main_internal_1 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_main_Main_g_2 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_main_Main_internal_3 to the stack
addiu $sp, $sp, -4
# Updates stack pointer pushing local_main_Main_internal_4 to the stack
addiu $sp, $sp, -4
lw $t0, -0($fp)
lw $t1, -4($fp)
# local_main_Main_g_0 <- GET self . g
lw $t1, 24($t0)
lw $t2, -8($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t1)
# Saves in t8 the direction of function_print_V_Graph
lw $t8, 24($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t1, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -0($fp)
sw $t1, -4($fp)
sw $t2, -8($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -8($fp)
# saves the return value
move $t0, $v0
lw $t1, -0($fp)
lw $t2, -12($fp)
# local_main_Main_g_2 <- GET self . g
lw $t2, 24($t1)
lw $t3, -16($fp)
# Find the actual name in the dispatch table
# Gets in t9 the actual direction of the dispatch table
lw $t9, 8($t2)
# Saves in t8 the direction of function_print_E_Graph
lw $t8, 20($t9)
sw $fp, ($sp)
addiu $sp, $sp, -4
sw $ra, ($sp)
addiu $sp, $sp, -4
# Push the arguments to the stack
# The rest of the arguments are push into the stack
sw $t2, ($sp)
addiu $sp, $sp, -4
# Empty all used registers and saves them to memory
sw $t0, -8($fp)
sw $t1, -0($fp)
sw $t2, -12($fp)
sw $t3, -16($fp)
# This function will consume the arguments
jal $t8
# Pop ra register of return function of the stack
addiu $sp, $sp, 4
lw $ra, ($sp)
# Pop fp register from the stack
addiu $sp, $sp, 4
lw $fp, ($sp)
lw $t0, -16($fp)
# saves the return value
move $t0, $v0
lw $t1, -20($fp)
# Moving local_main_Main_internal_3 to local_main_Main_internal_4
move $t1, $t0
sw $t1, -20($fp)
move $v0, $t1
# Empty all used registers and saves them to memory
sw $t0, -16($fp)
sw $t1, -20($fp)
# Removing all locals from stack
addiu $sp, $sp, 24
jr $ra


function_and_BoolOp:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value b1
addiu $fp, $fp, 4
# Pops the register with the param value b2
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_and_BoolOp_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# If b1 goto true__923
sw $t0, -4($fp)
bnez $t0, true__923
lw $t0, -12($fp)
# Moving 0 to local_and_BoolOp_internal_0
li $t0, 0
sw $t0, -12($fp)
sw $t0, -12($fp)
j end__923
true__923:
lw $t0, -0($fp)
lw $t1, -12($fp)
# Moving b2 to local_and_BoolOp_internal_0
move $t1, $t0
sw $t1, -12($fp)
sw $t0, -0($fp)
sw $t1, -12($fp)
end__923:
lw $t0, -12($fp)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra


function_or_BoolOp:
# Gets the params from the stack
move $fp, $sp
# Pops the register with the param value self
addiu $fp, $fp, 4
# Pops the register with the param value b1
addiu $fp, $fp, 4
# Pops the register with the param value b2
addiu $fp, $fp, 4
# Gets the frame pointer from the stack
# Updates stack pointer pushing local_or_BoolOp_internal_0 to the stack
addiu $sp, $sp, -4
lw $t0, -4($fp)
# If b1 goto true__935
sw $t0, -4($fp)
bnez $t0, true__935
lw $t0, -0($fp)
lw $t1, -12($fp)
# Moving b2 to local_or_BoolOp_internal_0
move $t1, $t0
sw $t1, -12($fp)
sw $t0, -0($fp)
sw $t1, -12($fp)
j end__935
true__935:
lw $t0, -12($fp)
# Moving 1 to local_or_BoolOp_internal_0
li $t0, 1
sw $t0, -12($fp)
sw $t0, -12($fp)
end__935:
lw $t0, -12($fp)
move $v0, $t0
# Empty all used registers and saves them to memory
sw $t0, -12($fp)
# Removing all locals from stack
addiu $sp, $sp, 16
jr $ra

# Raise exception method
.raise:
li $v0, 4
syscall
li $v0, 17
li $a0, 1
syscall

.data
type_Object: .asciiz "Object"
type_IO: .asciiz "IO"
type_String: .asciiz "String"
type_Int: .asciiz "Int"
type_Bool: .asciiz "Bool"
type_Graph: .asciiz "Graph"
type_Vertice: .asciiz "Vertice"
type_Edge: .asciiz "Edge"
type_EList: .asciiz "EList"
type_ECons: .asciiz "ECons"
type_VList: .asciiz "VList"
type_VCons: .asciiz "VCons"
type_Parse: .asciiz "Parse"
type_Main: .asciiz "Main"
type_BoolOp: .asciiz "BoolOp"
type_Void: .asciiz "Void"
types: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
data_0: .asciiz "Void"
data_1: .asciiz " ("
data_2: .asciiz ","
data_3: .asciiz ")"
data_4: .asciiz "
"
data_5: .asciiz "
"
data_6: .asciiz ""
data_7: .asciiz "
"
data_8: .asciiz ""
data_9: .asciiz "0"
data_10: .asciiz "1"
data_11: .asciiz "2"
data_12: .asciiz "3"
data_13: .asciiz "4"
data_14: .asciiz "5"
data_15: .asciiz "6"
data_16: .asciiz "7"
data_17: .asciiz "8"
data_18: .asciiz "9"
data_19: .asciiz "-"
data_20: .asciiz " "
data_21: .asciiz " "
data_22: .asciiz ","
data_23: .asciiz ""
data_24: .asciiz ""
data_25: .asciiz ""
methods: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
zero_error: .asciiz "Division by zero error
"
case_void_error: .asciiz "Case on void error
"
dispatch_error: .asciiz "Dispatch on void error
"
case_error: .asciiz "Case statement without a matching branch error
"
index_error: .asciiz "Substring out of range error
"
heap_error: .asciiz "Heap overflow error
"