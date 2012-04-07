ASM := ../../dcpu16/a16

HEX := \
	example.hex

all: $(HEX)

clean:
	rm -f $(HEX)

%.hex: %.s
	$(ASM) -O hex -o $@ $<
