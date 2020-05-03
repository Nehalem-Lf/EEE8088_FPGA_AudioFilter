transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EEE8088/s2p_adaptor/s2p_adaptor.vhd}

vcom -93 -work work {D:/EEE8088/s2p_adaptor/simulation/modelsim/s2p_adaptor.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  s2p_adaptor_vhd_tst

add wave *
view structure
view signals
run -all
