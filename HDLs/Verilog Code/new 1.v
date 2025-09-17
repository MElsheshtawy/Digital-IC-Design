module Counter(input i_clk, i_rst_n,i_up_down, output o_counter);
reg o_counter;
always @(posedge i_clk)
	if(i_up_down == 1 && o_counter<15)begin
	o_counter= o_counter + 1;
	end
	else if(i_up_down == 0 && o_counter>0)begin
	o_counter= o_counter - 1;
	end
end
always @(negedge i_clk)
	if(i_rst_n == 0)begin
	o_counter <= 0;
	end
end

endmodule