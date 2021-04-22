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
integer_1			DWORD		10d
integer_1Text		BYTE		"The value in 'integer_1' is : ", 0	
integer_2			DWORD		50d
integer_2Text		BYTE		"The value in 'integer_2' is : ",0	
byte_1				BYTE		30d
byte_1Text			byte		"The value in 'byte_1' is   : ",0
byte_2				BYTE		70d
byte_2Text			byte		"The value in 'byte_2' is   : ",0
phrasePracticeOne	byte		"Practice Expression #01",0
line				byte		"------------------------------------" ,0
PracticeOneARM		byte		"-(integer_1 + integer_2)", 0
intermediate_1		DWORD		0
intermediate_2		DWORD		0
intermediate_3		DWORD		0
phrase_plus			BYTE		"+", 0

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
	mov edx, offset practiceOneARM
	call writestring
	
	
	
	
	
	
	
	
	
	
	INVOKE ExitProcess, 0
main ENDP









showOperandContents PROC
	; YOUR CODE GOES HERE...
showOperandContents ENDP

showIntermediateContents PROC
	; YOUR CODE GOES HERE...
showIntermediateContents ENDP

END main