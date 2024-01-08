transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/MaciejWecki/Desktop/Intel/bb/rtl-model {C:/Users/MaciejWecki/Desktop/Intel/bb/rtl-model/quadra.vh}

