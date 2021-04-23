; EXTERNAL DEPENDENCIES
INCLUDE		Irvine32.inc
INCLUDELIB	Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096

; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD

; DATA SEGMENT
.data
integer_1			DWORD		10d, 0
integer_1Text		BYTE		"The value in 'integer_1' is    : ", 0	
integer_2			DWORD		50d , 0
integer_2Text		BYTE		"The value in 'integer_2' is    : ",0	
byte_1				BYTE		30d
byte_1Text			BYTE		"The value in 'byte_1' is       : ",0
byte_2				BYTE		70d
byte_2Text			BYTE		"The value in 'byte_2' is       : ",0
phrasePracticeOne	byte		"Practice Expression #01",0
line				byte		"------------------------------------" ,0
PracticeOneARM		byte		"-(integer_1 + integer_2)", 0
intermediate_1		BYTE		0 
intermediate_1Text  byte		"The value in 'intermiate_1' is :", 0
intermediate_2		DWORD		0
intermediate_2Text  byte		"The value in 'intermiate_2' is :", 0
intermediate_3		DWORD		0
intermediate_3Text  byte		"The value in 'intermiate_3' is :", 0
phrase_plus			BYTE		"+", 0
imABYTEVariable					BYTE	10d
; CODE SEGMENT
.code
main PROC
	
	MOV EDX, offset integer_1Text
	CALL WriteString
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 10d
	CALL WriteDec
	call crlf

	mov edx, offset integer_2Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 50d
	CALL WriteDec
	call crlf


	mov edx, offset byte_1
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 30d
	CALL WriteDec
	call crlf

	mov edx, offset byte_2
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 70d
	CALL WriteDec
	call crlf
	call crlf
	
	mov edx, offset phrasePracticeOne
	call writestring
	call crlf
	mov edx, offset line
	call writestring
	call crlf
	mov edx, offset practiceOneARM
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
	add eax, integer_1
	add eax, integer_2
	;movzx eax, intermediate_1, al
	call writedec
	
	call crlf
	mov edx, offset intermediate_2Text
	call writestring
	call crlf
	mov edx, offset intermediate_3Text
	call writestring
	call crlf
	
	;movzx eax, intermediate_1
	;add eax, integer_1
	;add eax, integer_2
	;movzx eax, intermediate_1, al
	;call writedec
	
	
	;MOVZX EAX, intermediate_1
	;ADD EAX, 10
	;MOV intermediate_1, AL				
	;CALL WriteDec
	
	CALL Crlf
	
	
	
	call crlf
	call crlf
	call crlf
	INVOKE ExitProcess, 0
main ENDP









showOperandContents PROC
	; YOUR CODE GOES HERE...
showOperandContents ENDP

showIntermediateContents PROC
	; YOUR CODE GOES HERE...
showIntermediateContents ENDP

END main