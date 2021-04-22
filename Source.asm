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
integer_1			DWORD		10
integer_1Text		BYTE		"The value in 'integer_1' is :"		
integer_2			DWORD		50
integer_2Text		BYTE		"The value in 'integer_2' is :"		
byte_1				BYTE		30
byte_1Text			byte		"The value in 'byte_1' is    :"
byte_2				BYTE		70
byte_2Text			byte		"The value in 'byte_2' is    :"
intermediate_1		DWORD		0
intermediate_2		DWORD		0
intermediate_3		DWORD		0

; CODE SEGMENT
.code
main PROC
	

	; Return to OS.
	INVOKE ExitProcess, 0
main ENDP

showOperandContents PROC
	; YOUR CODE GOES HERE...
showOperandContents ENDP

showIntermediateContents PROC
	; YOUR CODE GOES HERE...
showIntermediateContents ENDP

END main