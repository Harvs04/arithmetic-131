global _start


section .data
    hours db 20
    minutes dw 0
    seconds dd 0

    mins db 60
    secs db 60

section .text
_start:
    mov al, 0
    mov al, byte[hours]
    mul byte[mins]
    mov word[minutes], ax

    mov ax, 0
    mov ax, word[minutes]
    mul word[secs]
    mov word[seconds], ax
    mov word[seconds+2], dx

exit_here:
    mov rax, 60
    xor rdi, rdi
    syscall