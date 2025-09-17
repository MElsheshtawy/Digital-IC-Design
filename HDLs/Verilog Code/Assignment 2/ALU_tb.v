
module ALU_tb();
reg [3:0] i_in1_tb, i_in2_tb, i_operation_tb;
wire [7:0] o_result_tb;
integer i;
initial begin
i_in1_tb = 4'b0011;
i_in2_tb = 4'b0011;
for(i =0;i<16;i=i+1)begin
	i_operation_tb = i;
	$display("my first input = \"%b\" and the second one is\"%b\"",i_in1_tb,i_in2_tb);
	$display("my result after operation %d is %b",i_operation_tb,o_result_tb);
	#10;
end
#10
i_in1_tb = 4'b0001;
i_in2_tb = 4'b0110;
for(i =0;i<16;i=i+1)begin
	i_operation_tb = i;
	#10;
end
#10;
end
	ALU my_alu(.i_in1(i_in1_tb),
	.i_in2(i_in2_tb),
	.i_operation(i_operation_tb),
	.o_result(o_result_tb));
	
	
endmodule