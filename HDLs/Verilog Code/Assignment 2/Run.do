quit -sim

vlog -work work ALU.v
vlog -work work ALU_tb.v
vsim -voptargs="+acc" work.ALU_tb
add wave *
run 400ns