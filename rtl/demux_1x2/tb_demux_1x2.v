`timescale 1us/1ns
module tb_dmux_1bit();
	reg x;
	reg sel;
	wire y0;
	wire y1;

demux_1bit dut(
	.x(x),
	.sel(sel),
	.y0(y0),
	.y1(y1)
	);

initial begin 
	$monitor("time=%0t | x=%b sel=%b y0=%b y1=%b", $time, x, sel, y0,y1);
	end
initial begin

	#1; x=0; sel=0;
	#1; x=0; sel=1;
	#1; x=1; sel=0;
	#1; x=1; sel=1;
	#1; $stop;
	end
endmodule
