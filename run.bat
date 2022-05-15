@i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/start.s -o bin/start.o
@i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/kernel.c -o bin/kernel.o
@i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/ports.c -o bin/ports.o
@i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld bin/start.o bin/ports.o bin/kernel.o -o mykernel.elf -lgcc
@qemu\qemu-system-i386 -kernel mykernel.elf -m 4
@pause