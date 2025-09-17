module Counter_tb ();
	reg i_clk_tb;
	reg i_reset_tb;
	wire div_clk_tb;
	
	initial begin
		i_clk_tb =0;
		i_reset_tb =1;
		#7
		i_reset_tb =0;
		#10
		i_reset_tb =1;
		#1000;
	end
	
	always #5 i_clk_tb =!i_clk_tb;
	
	Counter DUT(.i_clk(i_clk_tb),.i_reset(i_reset_tb),.div_clk(div_clk_tb)); 
endmodule