module Baud_gen #(parameter division = 1)(
input i_clk,
input i_rst_n,
//input [31:0] baudrate, for future improvement
output reg pulse
);
	reg [15:0] threshhold;

	always @(posedge i_clk, negedge i_rst_n)begin
		if(!i_rst_n)begin
			threshhold <=4'h0000;
		end
		else if(threshhold == division)begin
			pulse = !pulse;
		end
		else begin
			threshhold = threshhold+1;
		end
	end

endmodule