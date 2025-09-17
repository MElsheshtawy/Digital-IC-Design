module ALU(
	input [3:0]i_in1,
	input [3:0]i_in2,
	input [3:0]i_operation,
	output reg [7:0] o_result
);
	always @(*) begin
		case(i_operation)
			4'b0000:	o_result =i_in1+i_in2;
			4'b0001: 	o_result =i_in1-i_in2;
			4'b0010:	o_result =i_in1*i_in2;
			4'b0011: 	o_result =i_in1/i_in2;
			4'b0100:	o_result =i_in1<<1;
			4'b0101: 	o_result =i_in1>>1;
			4'b0110:	o_result =i_in2<<1;
			4'b0111: 	o_result =i_in2>>1;
			4'b1000:	o_result =i_in1&i_in2;
			4'b1001: 	o_result =i_in1|i_in2;
			4'b1010:	o_result =i_in1^i_in2;
			4'b1011: 	o_result =~(i_in1|i_in2);
			4'b1100:	o_result =~(i_in1&i_in2);
			4'b1101: 	o_result =~(i_in1^i_in2);
			4'b1110:	o_result =i_in1 > i_in2;
			4'b1111: 	o_result =i_in1 == i_in2;
			default: o_result = 0;
		endcase
	end
endmodule