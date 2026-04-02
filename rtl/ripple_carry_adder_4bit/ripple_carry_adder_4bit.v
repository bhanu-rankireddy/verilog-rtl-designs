`timescale 1us/1ns

module ripple_adder_4bit(
	input[3:0] a,
	input[3:0] b,
	input carry_in,
	output[3:0] sum,
	output carry_out
	);

	wire[2:0] c;

full_adder_structural FA_struct_0(
	.a(a[0]),
	.b(b[0]),
	.carry_in(carry_in),
	.sum(sum[0]),
	.carry_out(c[0])
	);
full_adder_structural FA_struct_1(
	.a(a[1]),
	.b(b[1]),
	.carry_in(c[0]),
	.sum(sum[1]),
	.carry_out(c[1])
	);
full_adder_structural FA_struct_2(
	.a(a[2]),
	.b(b[2]),
	.carry_in(c[1]),
	.sum(sum[2]),
	.carry_out(c[2])
	);
full_adder_structural FA_struct_3(
	.a(a[3]),
	.b(b[3]),
	.carry_in(c[2]),
	.sum(sum[3]),
	.carry_out(carry_out)
	);
endmodule
`timescale 1us/1ns

module full_adder_structural(
	input a,
	input b,
	input carry_in,
	output sum,
	output carry_out
	);

	wire sum1;
	wire carry1;
	wire carry2;

half_adder_structural HA1(

	.a(a),
	.b(b),
	.sum(sum1),
	.carry(carry1)
	);
half_adder_structural HA2(

	.a(sum1),
	.b(carry_in),
	.sum(sum),
	.carry(carry2)
	);

    or( carry_out,carry1,carry2); // primitive verilog

endmodule
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
