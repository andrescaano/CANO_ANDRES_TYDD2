onerror {quit -f}
vlib work
vlog -work work Ej1_Cano.vo
vlog -work work Ej1_Cano.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Ej1_Cano_vlg_vec_tst
vcd file -direction Ej1_Cano.msim.vcd
vcd add -internal Ej1_Cano_vlg_vec_tst/*
vcd add -internal Ej1_Cano_vlg_vec_tst/i1/*
add wave /*
run -all
