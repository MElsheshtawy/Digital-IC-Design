module ff(
	input D,
	input clk,
	input reset,
	output reg q,
	output reg q_
);
	always @(posedge clk, negedge reset) begin
		if(!reset) begin
			q <= 0;
		end
		else begin
			q <= D;
		end
	end
	assign q = !q_;
endmodule