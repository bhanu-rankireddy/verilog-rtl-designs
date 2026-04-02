`timescale 1us/1ns
module tb_register_4bit();
	reg [3:0]d;
	reg clk;
	reg reset;
	wire [3:0]q;

register_4bit dut(
	.d(d),
	.clk(clk),
	.reset(reset),
	.q(q)
	);

initial begin
	clk = 0;
	forever begin
	#5; clk = ~clk;
   end
end
initial begin
	$monitor("time=%0t, |d = %b, clk = %b, reset =  %b,| q = %b", $time,d,clk,reset,q);
	
	 clk = 0;
    reset = 1;
    d = 4'b0000;

    #10 reset = 0;

    #10 d = 4'b1010;
    #10 d = 4'b0101;
    #10 d = 4'b1111;

    #10 reset = 1;
    #10 reset = 0;

    #20 $stop;

	end
endmodule
