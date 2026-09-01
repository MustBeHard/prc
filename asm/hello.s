.global main

.text

.data

msg:
    .ascii "Hello, you freaking ASSEMBLY!\n"
    ken = .-msg

.text
main:

movq $1, %rax
movq $1, %rdi
leaq msg(%rip), %rsi
movq $ken, %rdx

syscall

movq $0,%rax
ret

