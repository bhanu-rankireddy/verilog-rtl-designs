`timescale 1us/1ns
module tb_traffic_light_controller();
	reg clk;
	reg reset;
	wire red;
	wire green;
	wire yellow;
 integer i;

traffic_light_controller dut(
	.clk(clk),
	.reset(reset),
	.red(red),
	.green(green),
	.yellow(yellow)
	);

initial begin
	clk = 0 ;
forever #5 clk = ~clk;
end

initial begin

	$monitor("time = %0t,|clk =%b, reset =%b, | RED =%b, GREEN =%b, YELLOW =%b|", $time,clk,reset,red,green,yellow);
	
	clk = 0;
	reset = 1;
	#10; reset = 0;
	for(i =0; i < 30; i =i + 1)begin
	   @(posedge clk);
	end
	$stop;
 end

always @(posedge clk) begin
	if((red + green + yellow)!=1)begin
	
		$display("Error at time =%0t : Invalid traffic light state!", $time);
	$stop;
	end
end
endmodule

