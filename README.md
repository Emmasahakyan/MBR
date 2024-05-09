# MBR
Bootloader codes written in asm x86 and c.
Run the following commands on prompt line to test them.A simulator is needed(here used bochs).
The codes are written based on this article - https://www.codeproject.com/Articles/664165/Writing-a-boot-loader-in-Assembly-and-C-Part

//compile the asm code to binary code
as test.S -o test.o  
ld –Ttext 0x7c00 --oformat=binary test.o –o test.bin

//create a floppy disk image of 512bytes and copy the code to the boot sector
dd if=/dev/zero of=floppy.img bs=512 count=2880
dd if=test.bin of=floppy.img

//run the simulator
bochs

//compile the c code to binary
gcc -c -g -Os -m64 -ffreestanding -Wall -Werror test.c -o test.o
ld -static -Ttest.ld -nostdlib --nmagic -o test.elf test.o
objcopy -O binary test.elf test.bin

...
