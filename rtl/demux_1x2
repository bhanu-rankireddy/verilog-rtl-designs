`timescale 1us/1ns
module demux_1bit(
	input x,
	input sel,
	output y0,
	output y1
	);

	wire not_s;
	
	not not1(not_s,sel);
	and AND1(y0,x,not_s);
	and AND2(y1,x,sel);

endmodule
