IVL := iverilog

SRC := \
	cpu.v \
	library.v

#SRC += ../lib/library.v
SRC += testbench.v

#EXTRADEPS := ram.txt makerambanks.py
TESTHEX := tests/example.hex tests/test.hex

all: testbench 

testbench: $(SRC) $(TESTHEX)
	$(IVL) -o testbench $(SRC)

testbench.vcd: testbench
	./testbench

.PHONY: $(TESTHEX)
$(TESTHEX):
	$(MAKE) -C $(dir $@) $(notdir $@)

wave: testbench.vcd
	gtkwave testbench.vcd

clean::
	rm -f *~ testbench testbench.vcd
	make -C tests clean
