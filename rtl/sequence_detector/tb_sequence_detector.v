`timescale 1us/1ns
module tb_sequence_detector();
	reg x;
	reg clk;
	reg reset;
	wire y;

sequence_detector dut(
	.x(x),
	.clk(clk),
	.reset(reset),
	.y(y)
	);

initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin

  $monitor("time = %0t,| x = %b, clk = %b, reset = %b, | y = %b", $time, x, clk, reset, y);

end

initial begin
	reset = 1;
	x = 0;
	#10;
	reset = 0;

	#10; x = 1;
	#10; x = 0;
	#10; x = 1;
	#10; x = 1;
	
	#10; x = 0;
	#10; x = 1;
	#10; x = 1;

	#10; $stop;
end
endmodule

	
