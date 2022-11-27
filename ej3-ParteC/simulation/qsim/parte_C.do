onerror {quit -f}
vlib work
vlog -work work parte_C.vo
vlog -work work parte_C.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PARTE_C_DIAGRAMA_vlg_vec_tst
vcd file -direction parte_C.msim.vcd
vcd add -internal PARTE_C_DIAGRAMA_vlg_vec_tst/*
vcd add -internal PARTE_C_DIAGRAMA_vlg_vec_tst/i1/*
add wave /*
run -all
