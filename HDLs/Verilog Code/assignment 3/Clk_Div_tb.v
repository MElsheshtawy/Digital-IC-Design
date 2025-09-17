module Clk_tb();
	reg clk;
	reg reset;
	wire div_clk;
	
	initial begin
		clk =0;
		reset =1;
		#7
		reset =0;
		#10
		reset =1;
		#1000;
	end
	
	always #5 clk =!clk;
	
	Div10 DUT(.clk(clk),.reset(reset),.clk10(div_clk)); 
	
endmodule