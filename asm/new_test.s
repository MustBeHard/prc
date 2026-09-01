.global main
.text


.data
msg:
.ascii "\033[34mA senstence to say.\033[0m\n"
len = .-msg
# 如果使用as编译，则需要使用_start
# text是代码，data则是数据
#
# 此处注意，text section和data section的分别
.text

main:

movq $1,%rax
movq $1,%rdi
leaq msg(%rip),%rsi
movq $len,%rdx
syscall

movq $60,%rax
movq $0,%rdi
syscall
