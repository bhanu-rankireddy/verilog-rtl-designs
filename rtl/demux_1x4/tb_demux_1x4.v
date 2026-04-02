`timescale 1us/1ns
module tb_demux_1to4();
	reg x;
	reg s0,s1;
	wire y0,y1,y2,y3;

demux_1to4 dut(
	.x(x),
	.s0(s0),
	.s1(s1),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3)
	);

initial begin
	$monitor("time=%0t,| x=%b,s0=%b,s1=%b,|y0=%b,y1=%b,y2=%b,y3=%b", $time,x,s0,s1,y0,y1,y2,y3);
	end
	
initial begin

	#1; x = 0; s1 = 0; s0 = 0;
        #1; x = 0; s1 = 0; s0 = 1;
        #1; x = 1; s1 = 0; s0 = 0;
        #1; x = 1; s1 = 0; s0 = 1;
        #1; x = 1; s1 = 1; s0 = 0;
        #1; x = 1; s1 = 1; s0 = 1;
	#1; $stop;

	end
endmodule
