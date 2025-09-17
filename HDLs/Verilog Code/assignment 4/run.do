quit -sim

vlog -work work Counter.v
vlog -work work Counter_tb.v
vsim -voptargs=+acc work.Counter_tb -do "add wave *;run 400ns;"