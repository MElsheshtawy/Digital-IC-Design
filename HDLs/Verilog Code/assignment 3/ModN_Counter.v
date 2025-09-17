module counter(
	input Clk,
	input Reset,
	output [2:0] Counter
);
	wire Q1_;
	wire Q1;
	wire Q2_;
	wire Q2;
	wire Q3_;
	wire Q3;
	ff flip1(.D(Q1_),.q(Q1),.q_(Q1_),.clk(clk),.reset(reset));
	ff flip2(.D(Q1^Q2),.q(Q2),.q_(Q2_),.clk(clk),.reset(reset));
	ff flip3(.D((Q1_&Q2_)^Q3),.q(Q3),.q_(Q3_),.clk(clk),.reset(reset));
	
	assign Counter ={Q3,Q2,Q1};
	
endmodule