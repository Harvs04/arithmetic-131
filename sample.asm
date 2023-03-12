global _start


section .data
    hours db 20
    minutes dw 0
    seconds dd 0

section .text
_start:
    


exit_here:
    mov rax, 60
    xor rdi, rdi
    syscall