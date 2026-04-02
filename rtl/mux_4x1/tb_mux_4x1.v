`timescale 1us/1ns
module tb_mux_4_1();
	reg d0;
	reg d1;
	reg d2;
	reg d3;
	reg s0;
	reg s1;
	wire y;

mux_4_1 dut(
	.d0(d0),
	.d1(d1),
	.d2(d2),
	.d3(d3),
	.s0(s0),
	.s1(s1),
	.y(y)
	);

initial begin 
	$monitor("time=%0t | d0=%b d1=%b d2=%b d3=%b | s1=%b s0=%b | y=%b", $time, d0, d1, d2, d3, s1, s0, y);
	end
initial begin
	
	d0 = 0;
	d1 = 1;
	d2 = 0;
	d3 = 1;

	#1; s1=0; s0=0;
	#1; s1=0; s0=1;
	#1; s1=1; s0=0;
	#1; s1=1; s0=1;
	#5; $stop;
	end
endmodule
