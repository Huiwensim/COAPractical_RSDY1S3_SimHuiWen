INCLUDE Irvine32.inc

.data
dlist dword 2,5000,6000,150000,2500,150

.code
main proc

mov ecx,6
mov esi,0
mov ebx,0

L1:
	mov eax,dlist[esi]
	add ebx,eax
	add esi,4
loop L1

mov eax,ebx
call writeInt
call crlf
	
exit
main endp
end main