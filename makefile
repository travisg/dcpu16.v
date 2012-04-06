IVL := iverilog

SRC := \
	cpu.v \
	library.v

#SRC += ../lib/library.v
SRC += testbench.v

#EXTRADEPS := ram.txt makerambanks.py
EXTRADEPS := test2.asm.hex

all: testbench 

testbench: $(SRC)
	$(IVL) -o testbench $(SRC)

testbench.vcd: testbench $(EXTRADEPS)
	./testbench

wave: testbench.vcd
	gtkwave testbench.vcd

clean::
	rm -f *~ testbench testbench.vcd