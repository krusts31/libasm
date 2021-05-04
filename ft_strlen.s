;	size_t	ft_strlen(const char *s)

global _ft_strlen

_ft_strlen:
	mov	rax, 0
	mov	cl, [rdi]
	cmp	cl, 0
	jne	.loop
	ret

.loop:
	inc	rax
	inc	rdi
	mov	cl, [rdi]
	cmp	cl, 0
	jne	.loop
	ret
