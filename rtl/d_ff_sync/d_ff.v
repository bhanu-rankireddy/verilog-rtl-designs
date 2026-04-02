`timescale 1us/1ns
module dff(
	input d,
	input clk,
	input reset,
	output reg q,
	output q_not
	);

always @ (posedge clk)begin
	if(reset)
	q <= 1'b0;
	else
	q <= d;
end
	assign q_not = ~q;

endmodule
