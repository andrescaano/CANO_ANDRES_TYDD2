transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Parte_B_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Yo/Desktop/TyDD2/ej2/Testbench_parte_B.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Parte_B_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  Testbench_Parte_B

add wave *
view structure
view signals
run -all
