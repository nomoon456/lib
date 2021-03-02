section .text
	global ft_strdup

extern malloc
extern ft_strlen
extern ft_strcpy

ft_strdup:
	mov rdx, rdi
	push rdx
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc
	pop rsi
	mov rdi, rax
	push rax
	call ft_strcpy
	pop rax
	ret
