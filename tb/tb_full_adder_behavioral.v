`timescale 1us/1ns

module tb_full_adder_behavioral();
	reg a;
	reg b;
	reg Cin;
	wire sum;
	wire Cout;

full_adder_behavioral dut(
	.a(a),
	.b(b),
	.carry_in(Cin),
	.sum(sum),
	.carry_out(Cout)
);

initial begin
	$monitor("time=%0t,|a=%b,b=%b,carry_in=%b,|sum=%b,carry_out=%b", $time,a,b,Cin,sum,Cout);
  end

initial begin

	#1; a = 0; b = 0; Cin=0;
	#1; a = 0; b = 0; Cin=1;
	#1; a = 0; b = 1; Cin=0;
	#1; a = 0; b = 1; Cin=1;
	#1; a = 1; b = 0; Cin=0;
	#1; a = 1; b = 0; Cin=1;
	#1; a = 1; b = 1; Cin=0;
	#1; a = 1; b = 1; Cin=1;
	#1; $stop;
 end

endmodule
	
