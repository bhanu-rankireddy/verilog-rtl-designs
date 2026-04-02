`timescale 1us/1ns

module half_adder_structural(
	input a,
	input b,
	output sum,
	output carry
);

	xor XOR1(sum, a, b);
	and AND(carry, a, b);
  
endmodule
