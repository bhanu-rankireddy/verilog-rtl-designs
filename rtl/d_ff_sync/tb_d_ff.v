`timescale 1us/1ns
module tb_d_ff();
	reg d;
	reg clk;
	reg reset;
	wire q;
	wire q_not;

d_ff dut(
	.d(d),
	.clk(clk),
	.reset(reset),
	.q(q),
	.q_not(q_not)
	);

initial begin
	clk = 0;
	forever begin
	#5; clk = ~clk;
   end
end
initial begin
	$monitor("time=%0t, |d = %b, clk = %b, reset =  %b,| q = %b, q_not = %b", $time,d,clk,reset,q,q_not);
	
	d = 0; reset = 0;

	#5; reset =0 ; d =1;
	#5; reset =0 ; d =0;
	#5; reset =0 ; d =1;
	#5; reset =0 ; d =0;
	#5; reset =1 ; d =1;
	#5; reset =1 ; d =0;
	#5; reset =1 ; d =1;
	#5; reset =1 ; d =0;
	#10; $stop;
	end
endmodule
