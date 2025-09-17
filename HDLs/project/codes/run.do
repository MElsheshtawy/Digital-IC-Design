quit -sim

vlog -work work Baud_gen.v
vlog -work work PISO_reg.v
vlog -work work UART.v
vlog -work work UART_tb.v
vsim -voptargs=+acc work.UART_tb -do "add wave *;run 400ns;"