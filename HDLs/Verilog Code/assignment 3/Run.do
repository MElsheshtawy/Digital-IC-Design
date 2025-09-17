quit -sim

vlog -work work FF.v
vlog -work work ModN_Counter.v
vlog -work work Clk_Div.v
vlog -work work Clk_Div_tb.v
vsim -voptargs=+acc work.Clk_Div_tb -do "add wave *;run 400ns;"
