module Div10(
	input clk,
	input reset,
	output clk10
);
	wire [2:0] counter;
	wire q, q_;
	wire div1clk;
	counter number(.Clk(clk),.Reset(reset),.Counter(counter));
	
	ff divider1(.D(counter[1]),.clk(!clk),.reset(reset),.q(q),.q_(q_));
	assign div1clk = counter[1] | q;
	
	wire out2;
	ff divider2(.D(!out1),.clk(clk),.reset(reset),.q(clk10),.q_(out2));
endmodule