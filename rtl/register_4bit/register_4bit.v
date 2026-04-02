`timescale 1us/1ns
module register_4bit(
	input [3:0]d,
	input clk,
	input reset,
	output reg [3:0]q
	);

always @ (posedge clk)begin
	if(reset)
	q <= 4'b0000;
	else
	q <= d;
end

endmodule
