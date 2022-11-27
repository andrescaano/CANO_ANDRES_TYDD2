transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Yo/Desktop/CanoAndres/ej1/Ej1_Cano.vhd}

vcom -93 -work work {C:/Users/Yo/Desktop/CanoAndres/ej1/Ej1_Cano_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Ej1_Cano_testbench

add wave *
view structure
view signals
run -all
