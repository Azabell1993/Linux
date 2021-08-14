AS = nasm
ASLFLAGS = -f elf64
LD = ld
SOURCES = ./*.asm
OBJECTS = ./*.o
RESULT = main

COMLILE:
	$(AS) $(ASLFLAGS) $(SOURCES) -o $(OBJECTS)
	$(LD) $(OBJECTS) -o $(RESULT)

clean:
	rm -rf *.o $(RESULT)


