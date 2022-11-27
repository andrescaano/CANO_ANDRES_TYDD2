transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Ej1_Cano_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Yo/Desktop/CanoAndres/ej1/Ej1_Cano_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Ej1_Cano_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  Ej1_Cano_testbench

add wave *
view structure
view signals
run -all
