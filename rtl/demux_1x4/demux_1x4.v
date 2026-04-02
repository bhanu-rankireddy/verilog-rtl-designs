`timescale 1us/1ns
module demux_1to4(
	input x,
	input s0,
    	input s1,
    	output y0,
   	output y1,
   	output y2,
    	output y3
	);
	wire not_s0;
	wire not_s1;

not not1(not_s0,s0);
not not2(not_s1,s1);
and AND1(y0,x,not_s0,not_s1);
and AND2(y1,x,s0,not_s1);
and AND3(y2,x,not_s0,s1);
and AND4(y3,x,s0,s1);

endmodule
