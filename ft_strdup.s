extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text
	global _ft_strdup

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
