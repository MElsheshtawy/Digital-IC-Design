module Counter #(parameter div_num = 7 )(
	input i_clk,
	input i_reset,
	output reg div_clk
);
	reg [31:0] count =0;
	always@(posedge i_clk, negedge i_reset)begin
			if(!i_reset)begin
				div_clk<=0;
				count <=0;
			end
			else begin
				if(count == (div_num+1)/2)begin
					div_clk <= !div_clk;
					count <=0;
				end
				else begin
					count <= count+1;
				end
			end
		end

	if(div_num& (1'b1) == 1)begin
		always@(negedge i_clk)begin
			if(count == (div_num+1/2)-1)begin
				div_clk <= div_clk&i_clk;
			end
		end
	end
endmodule