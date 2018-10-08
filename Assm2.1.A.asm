##########################################################################
# Tyler Cummings, CS 2318-260, Assignment 2 Part 1 Program A
#
#	Description: The purpose of this program is to prompt the user to 
#		enter an integer, string, and character, read these inputs, 
#		and output the data to the screen.
#
############################ data segment ################################
	
		.data
intPr:		.asciiz "Enter an integer: "
intLab:		.asciiz "Your integer is: "
strPr:		.asciiz "Enter a string of up to 50 characters: "
str:		.space 51
strLab:		.asciiz "Your string is: "
charPr:		.asciiz "Enter a character: "
charLab:	.asciiz "Your character is: "

############################ code segment ################################

		.text
		.globl main
main:
		li $v0, 4
		la $a0, intPr		
		syscall			#print intPr
		li $v0, 5
		syscall			#read integer
		move $t0, $v0
		li $v0, 4
		la $a0, intLab
		syscall			#print intLab
		li $v0, 1
		move $a0, $t0
		syscall			#print integer
			
		li $v0, 11
		li $a0, '\n'
		syscall
		li $v0, 11
		li $a0, '\n'
		syscall
			
		li $v0, 4
		la $a0, strPr
		syscall			#print strPr
		li $v0, 8
		la $a0, str
		li $a1, 51
		syscall			#read string
			
		li $v0, 4
		la $a0, strLab		#print strLab
		syscall
		li $v0, 4
		la $a0, str
		syscall			#print string
		
		li $v0, 11
		li $a0, '\n'
		syscall
			
		li $v0, 4
		la $a0, charPr
		syscall			#print charPr
		li $v0, 12
		syscall			#read char
		move $t0, $v0
				
		li $v0, 11
		li $a0, '\n'
		syscall
								
		li $v0, 4
		la $a0, charLab		
		syscall			#print charLab
		li $v0, 11	
		move $a0, $t0
		syscall			#print char
			
		li $v0, 10		# exit 
               syscall
			