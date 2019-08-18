.386
.model flat, stdcall

.stack 4096

INCLUDE Irvine32.inc

.data
	tc dword 3200
	tf dword ?
.code

main PROC

	mov eax,tc
	mov ebx,90
	mul ebx
	mov ebx,4
	div ebx
	add eax,tc
	mov tf,eax
	call writehex

	exit
main ENDP
END main
