INCLUDE Irvine32.inc
.data?
a dword ?
b dword ?
.data
msg1 byte "Entrer un entier : ",0
msg2 byte "La somme est : ",0
msg3 byte "La soustraction est : ",0
msg4 byte "la multiplication : ",0
msg5 byte "le resultat de la division est : ",0
msg6 byte ", le reste de la division est : ",0
.code 

;ADDITION

main PROC
mov edx,OFFSET msg1
call writeString
call readint
mov a,eax
call writeString
call readint
mov b,eax
add eax,a
mov edx,OFFSET msg2
call writeString
call writeint
call crlf


;SOUSTRACTION
mov edx,OFFSET msg3
call writeString
mov eax,b
mov ebx,a
mov ecx,a
sub a,eax
mov eax,a
call writeint
call crlf


;MULTIPLICATION
mov edx,OFFSET msg4
call writeString
mov eax,ebx
mul b
call writeint
call crlf

;DIVISION
mov edx,OFFSET msg5
call writeString
mov edx,0
mov eax,ecx
mov ebx,b
div ebx
call writeint
mov ecx,edx 

mov edx,OFFSET msg6
call writeString
mov eax,ecx
call writeint

call crlf

main ENDP
END main