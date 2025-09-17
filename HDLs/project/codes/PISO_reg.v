module Shift_reg #(parameter size =7)(
input i_clk,
input i_rst_n,
input [size:0] Data,
input State, 
output reg out
);
	reg [size:0] Memory;
	always @(negedge i_rst_n) begin
		Memory <=0;
	end
	always @(State)begin
		assign Memory = Data;
	end
	always @(posedge i_clk)begin
			out <= Data[0];
			Memory<={1'b0,Memory[7:1]};
	end

endmodule