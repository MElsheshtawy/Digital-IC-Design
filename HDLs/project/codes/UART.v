module UART #(parameter size =7)(
	input i_clk,
	input i_rst_n,
	input [size:0] i_data,
	input i_en,
	output reg O_Data,
	output reg O_Done,
	output reg O_Busy
);
	wire baudpulse;
	reg Data, getData;
	//generate baudpulse
	Baud_gen Pulses(.i_clk(i_clk),.i_rst_n(i_rst_n),.pulse(baudpulse));
	//inistantiate register
	Shift_reg Memout(.i_clk(i_clk),.i_rst_n(i_rst_n),.Data(i_data),.State(getData),.out(Data));
	reg [4:0] counter;
	always @(posedge baudpulse, negedge i_rst_n, i_en) begin
		if(!i_rst_n) begin
			counter<=0;
		end
		else if(baudpulse) begin
			assign counter =counter +1;
			if(counter == 0) begin
				getData <= 1;
				O_Data <=0;
			end
			else if(counter == 9) begin
				O_Data <=1;
				counter <=0;
				O_Busy<=0;
				O_Done <=1;
			end
			else begin
				getData<=0;
				O_Data <= Data;
			end
		end
	end
endmodule