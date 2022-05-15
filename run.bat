@i686-elf-gcc -std=gnu99 -ffreestanding -g -c start.s -o start.o
@i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel.c -o kernel.o
@i686-elf-gcc -std=gnu99 -ffreestanding -g -c port.c -o port.o
@i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld start.o port.o kernel.o -o mykernel.elf -lgcc
@qemu\qemu-system-i386 -kernel mykernel.elf -m 4
@pause