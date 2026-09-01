.global main
.text  

.data
msg:
    .ascii "HEllO Assembly!\n"
    len = .-msg

.text
add2:

    movq %rdi, %rax
    addq %rsi, %rax
    ret

main:
    movq $1,%rax
    movq $1,%rdi
    leaq msg(%rip),%rsi
    movq $len,%rdx
    syscall



    movq $31, %rdi
    movq $42, %rsi
    call add2


    ## init
    movq %rax, %rdi
    movq $60, %rax
    syscall
