INCLUDE irvine32.inc

.data

english byte "In english : You like english and espresso, excellent!",0
ee byte "e"
space byte " "
gg byte "g"
eggnglish byte "                                                                     ",0


.code
main proc
    
	mov ecx,52
	mov esi,0
	mov edi,0
	mov edx,offset english
	call writestring
	call crlf

L1:
	mov al,english[esi]
	mov bl,space
	cmp al,bl
	je compare
	mov eggnglish[edi],al
	inc esi
	inc edi
	loop L1
	jmp result

compare:
	mov al,english[esi+1]
	mov bl,ee
	cmp al,bl
	je change
	mov al,english[esi]
	mov eggnglish[edi],al
	inc esi
	inc edi
	loop L1

change:
	mov al,ee
	mov eggnglish[edi+1],al
	mov al,gg
	mov eggnglish[edi+2],al
	mov eggnglish[edi+3],al
	add edi,3
	add esi,2
	inc edi
	loop L1

result:
	mov edx,offset eggnglish
	call writestring
	
	
	exit
main endp
end main