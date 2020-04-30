transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EEE8088/codec_init/codec_init.vhd}

vcom -93 -work work {D:/EEE8088/codec_init/simulation/modelsim/codec_init.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  codec_init_vhd_tst

add wave *
view structure
view signals
run -all