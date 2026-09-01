
.global main
.text

my_add:
movq %rdi, %rax
addq %rsi, %rax
ret ;;// I dont understand, is there any method to return the result to main funciton?

main:
;;// pass the arguments

movq $10,%rax
movq %rax,%rdi
movq $20,%rax
movq %rax,%rsi
;;// I remember that we have to pass value through RAX, 

call my_add

movq %rax,%rdx  ;;//temperory store

movq $60,%rax
movq %rdx,%rdi
syscall

