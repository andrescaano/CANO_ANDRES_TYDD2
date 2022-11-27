onerror {quit -f}
vlib work
vlog -work work Parte_B.vo
vlog -work work Parte_B.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Parte_B_vlg_vec_tst
vcd file -direction Parte_B.msim.vcd
vcd add -internal Parte_B_vlg_vec_tst/*
vcd add -internal Parte_B_vlg_vec_tst/i1/*
add wave /*
run -all
