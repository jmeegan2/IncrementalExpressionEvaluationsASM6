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
byte_1Text			BYTE		"The value in 'byte_1' is      : ",0
byte_2				BYTE		70d
byte_2Text			BYTE		"The value in 'byte_2' is      : ",0
phrasePracticeOne	byte		"Practice Expression #01",0
phrasePracticeTwo	byte		"Practice Expression #02",0
line				byte		"------------------------------------" ,0
practiceOneARM		byte		"-(integer_1 + integer_2)", 0			;ARM just means arithmetic 
practiceOneARMpart2	byte		"-(intermediate_1)", 0
practiceTwoARM		byte		"integer_2 - integer_1 + 2(integer_2)", 0			;ARM just means arithmetic 
practiceTwoARMpart2	byte		"integer_2 - integer_1 + intermediate_1", 0
practiceTwoARMpart3	byte		"intermediate_2 + intemediate_1", 0
intermediate_1		BYTE		? 
intermediate_1Text  byte		"The value in 'intermiate_1' is :", 0
intermediate_2		byte		?
intermediate_2Text  byte		"The value in 'intermiate_2' is :", 0
intermediate_3		byte		?
intermediate_3Text  byte		"The value in 'intermiate_3' is :", 0
phrase_plus			BYTE		"+", 0
phrase_minus		BYTE		"-", 0
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

;Start of Practice Expression #01

	mov edx, offset phrasePracticeOne
	call writestring
	call crlf
	mov edx, offset line
	call writestring
	call crlf
	mov edx, offset practiceOneARM	; -(integer_1 + integer_2)
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
	add eax, integer_1
	add eax, integer_2 
	call writedec
	

	call crlf
	mov edx, offset intermediate_2Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_2
	call writedec
	call crlf

	mov edx, offset intermediate_3Text
	CALL WriteString
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf
	call crlf
	
	;Part two of practic expression #01
	
	mov edx, offset practiceOneArmpart2		;-(intermediate_1)
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_minus
	CALL WriteString
	movsx eax, intermediate_1
	add eax , 60
	 
	call writeDec
	
	call crlf
	mov edx, offset intermediate_2Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_2
	call writedec
	call crlf

	mov edx, offset intermediate_3Text
	CALL WriteString
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf
	call crlf
	
	;start of expression #02
	mov edx, offset phrasePracticeTwo
	call writestring
	call crlf
	mov edx, offset line
	call writestring
	call crlf
	mov edx, offset practiceTwoARM  ;//integer_2 - integer_1 +2(integer_2//
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
	add eax, integer_2	;50
	sub eax, integer_1	;-10
	add eax, integer_2	;+50
	add eax, integer_2	;+50
	call writedec
	

	call crlf
	mov edx, offset intermediate_2Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_2
	call writedec
	call crlf

	mov edx, offset intermediate_3Text
	CALL WriteString
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf
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