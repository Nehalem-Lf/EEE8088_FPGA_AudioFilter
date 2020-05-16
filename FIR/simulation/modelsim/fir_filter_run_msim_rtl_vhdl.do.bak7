transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EEE8088/FIR/fir_filter.vhd}

vcom -93 -work work {D:/EEE8088/FIR/simulation/modelsim/fir_filter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  fir_filter_vhd_tst

add wave *
view structure
view signals
run -all
