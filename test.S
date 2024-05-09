.code16
.text
	.globl _start;
_start:

	movb $'H',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'E',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'L',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'L',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'O',%al
	movb $0x0e, %ah
	int $0x10
	
	
	movb $' ',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'T',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'H',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'E',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'R',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'E',%al
	movb $0x0e, %ah
	int $0x10
	
	movb $'!',%al
	movb $0x0e, %ah
	int $0x10
	
	. = _start + 510
	.byte 0x55
	.byte 0xaa
	
