`timescale 1us/1ns

module tb_register_siso();
	reg si;
	reg clk;
	reg reset;
	wire so;
	

register_siso dut(
	.si(si),
	.clk(clk),
	.reset(reset),
	.so(so)
	);

initial begin
	clk = 0;
	forever begin
	#5; clk = ~clk;
   end
end

initial begin
	$monitor("time=%0t,| si=%b,clk=%b,reset=%b,|so=%b",$time,si,clk,reset,so);

	si = 0; clk = 0; reset = 1;

	#10; reset = 0;

	#10; si = 1;
	#10; si = 0;
	#10; si = 1;
	#10; si = 1;

	#20; $stop;
end
endmodule
	
