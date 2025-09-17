module UART_tb();
	reg i_clk_tb, i_rst_n_tb, i_en_tb;
	reg [7:0] i_data_tb;
	wire O_Data_tb, O_Done_tb, O_Busy_tb;
	
	initial begin
		i_clk_tb =0;
		i_rst_n_tb =1;
		#10
		i_rst_n_tb =0;
		#10
		i_rst_n_tb =1;
		#10
		i_en_tb =1;
		i_data_tb = 100;
		#20;
		i_data_tb = 90;
		#20;
	end

	always i_clk_tb = #1 !i_clk_tb;
	
	UART DUT(.i_clk(i_clk_tb),.i_rst_n(i_rst_n_tb),.i_en(i_en_tb),.i_data(i_data_tb),
	.O_Data(O_Data_tb),.O_Done(O_Done_tb),.O_Busy(O_Busy_tb));
	
endmodule