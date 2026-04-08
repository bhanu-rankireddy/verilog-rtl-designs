`timescale 1us/1ns
module register_siso(
	input si,
	input clk,
	input reset,
	output so
	);
	reg [3:0]sio;

always @ (posedge clk)begin
	if(reset)
	sio <= 4'b0000;
	else
	sio <= {sio[2:0],si};
end
	assign so = sio[3];

endmodule
