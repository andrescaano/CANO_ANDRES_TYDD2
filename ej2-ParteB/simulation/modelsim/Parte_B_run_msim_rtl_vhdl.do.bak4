transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Yo/Desktop/TyDD2/ej2/Parte_B.vhd}
vcom -93 -work work {C:/Users/Yo/Desktop/TyDD2/ej2/FF_D.vhd}

vcom -93 -work work {C:/Users/Yo/Desktop/TyDD2/ej2/Testbench_parte_B.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Testbench_Parte_B

add wave *
view structure
view signals
run -all
