`timescale 1us/1ns

module tb_half_adder_structural();
	reg a;
	reg b;
	wire sum;
	wire carry;

half_adder_structural dut(
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry)
);

initial begin
	$monitor($time,"a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
  end

initial begin

	#1; a = 0; b = 0;
	#1; a = 0; b = 1;
	#1; a = 1; b = 0;
	#1; a = 1; b = 1;
	#1; a = 0; b = 0;
	#1; a = 1; b = 1;
	#1; $finish;
    end
endmodule
	
