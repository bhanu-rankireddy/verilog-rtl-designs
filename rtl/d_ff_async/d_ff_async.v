`timescale 1us/1ns
module d_ff_async(
	input d,
	input clk,
	input reset,
	output reg q,
	output q_not
	);

always @ (posedge clk or posedge reset)begin
	if(reset)
	q <= 1'b0;
	else
	q <= d;
end
	assign q_not = ~q;

endmodule
