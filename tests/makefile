ASM := ../../dcpu16/a16

HEX := \
	example.hex \
	test.hex

all: $(HEX)

clean:
	rm -f $(HEX) $(HEX).lst

%.hex: %.s
	$(ASM) -O hex -o $@ $<
	$(ASM) -O pretty -o $@.lst $<
