

:start
	set a, 1
	set b, 2
	set c, 3
	set x, data
	set y, data2

	add	a, b
	add	a, [x]
	set [y], a

	add a, [1+x]

:loop
	set pc, loop

:data
	word 99
:data2
	word 0
