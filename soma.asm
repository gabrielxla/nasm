section .data
    num1 dq 10
    num2 dq 20
    result dq 0

section .text
    global _start

_start:
    mov rax, [num1]     ;move o valor de num1 para rax
    add rax, [num2]     ;adiciona o valor de um num2 a rax
    add [result], rax   ;armazena o resultado em result

    mov rax, 60         ;sys_exit system call
    xor rdi, rdi        ;exit code 0
    syscall
