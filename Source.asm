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
integer_1			DWORD		-10d, 0
integer_1Text		BYTE		"The value in 'integer_1' is    : ", 0	

integer_2			DWORD		40d , 0
integer_2Text		BYTE		"The value in 'integer_2' is    : ",0	

byte_1				BYTE		-20d
byte_1Text			BYTE		"The value in 'byte_1' is      : ",0

byte_2				BYTE		100d
byte_2Text			BYTE		"The value in 'byte_2' is      : ",0

phrasePracticeOne	byte		"Practice Expression #01",0
phrasePracticeTwo	byte		"Practice Expression #02",0
phrasePracticeThree	byte		"Practice Expression #03",0
phrasePracticeFour	byte		"Practice Expression #04",0
line				byte		"------------------------------------" ,0

practiceOneARM		byte		"-(integer_1 + integer_2)", 0			;ARM just means arithmetic 
practiceOneARMpart2	byte		"-(intermediate_1)", 0

practiceTwoARM		byte		"integer_2 - integer_1 + 2(integer_2)", 0			;ARM just means arithmetic 
practiceTwoARMpart2	byte		"integer_2 - integer_1 + intermediate_1", 0
practiceTwoARMpart3	byte		"intermediate_2 + intemediate_1", 0

practiceThreeARM    byte		"integer_1 + byte_1 - integer_2",0
practiceThreeARMpart2	byte	"intermediate_1 - integer_2",0

practiceFourARM			byte		"byte_2 - byte_1 + 2(integer_2 - byte_1)",0
practiceFourARMpart2	byte		"byte_2 - byte_1 + 2(intermediate_1)",0
practiceFourARMpart3	byte		"byte_2 - byte_1 + intermediate_2",0
practiceFourARMpart4	byte	"intermediate_3 + intermediate _2",0

intermediate_1		BYTE		? 
intermediate_1Text  byte		"The value in 'intermiate_1' is :", 0
intermediate_2		byte		?
intermediate_2Text  byte		"The value in 'intermiate_2' is :", 0
intermediate_3		byte		?
intermediate_3Text  byte		"The value in 'intermiate_3' is :", 0

phrase_plus			BYTE		"+", 0
phrase_minus		BYTE		"-", 0

sum dword ?
; CODE SEGMENT
.code
main PROC
	;Showing the values of integer_1, integer_2, byte_1, byte_2
	MOV EDX, offset integer_1Text
	CALL WriteString
	MOV EDX, OFFSET phrase_minus
	CALL WriteString
	MOV EAX, 10d
	CALL WriteDec
	call crlf

	mov edx, offset integer_2Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 40d
	CALL WriteDec
	call crlf


	mov edx, offset byte_1
	call writestring
	MOV EDX, OFFSET phrase_minus
	CALL WriteString
	MOV EAX, 20d
	CALL WriteDec
	call crlf

	mov edx, offset byte_2
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, 100d
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
	mov sum, 0d
	mov eax, integer_1
	add eax, integer_2			;first part done 4/25
	mov sum, eax
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
	mov eax, sum
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
	; start of part two of practice #2
	mov edx, offset practiceTwoARMpart2  ;//integer_2 - integer1 + intermediate_1//
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	
	
	call crlf
	call crlf
	; start of part three of practice #2
	mov edx, offset practiceTwoARMpart3  ;//intermediate_2 + intermediate_1 //
	call writestring
	call crlf
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf
	call crlf
	
	;Start of practice expression three 

	mov edx, offset phrasePracticeThree
	call writestring 
	call crlf
	mov edx, offset line
	call writestring
	call crlf
	mov edx, offset practiceThreeARM  ;//integer_1 + byte_1 - integer_2//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf 
	call crlf
	mov edx, offset practiceThreeARMpart2 ;//intermediate_1 - integer_2//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf 
	call crlf

	;Practice Expression #04 starts here 

	mov edx, offset phrasePracticeFour
	call writestring 
	call crlf
	mov edx, offset line
	call writestring
	call crlf
	mov edx, offset practiceFourARM  ;//byte_2-byte_1 +2(integer_2 - byte_1)//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf 
	call crlf
	mov edx, offset practiceFourARMpart2 ;//byte_2 - byte_1 + 2(intermediate_1 - byte_1))//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf 
	call crlf
	mov edx, offset practiceFourARMpart3 ;//byte_2 - byte_1 + intermediate_2//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
	call crlf 
	call crlf
	mov edx, offset practiceFourARMpart4 ;//intermediate_3 + intermediate_2//
	call writestring
	call crlf 
	mov edx, offset intermediate_1Text
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_1
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
	call writestring
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	movzx eax, intermediate_3
	call writedec
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