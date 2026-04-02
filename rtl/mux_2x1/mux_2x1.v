`timescale 1us/1ns
module MUX_1bit(
	input a,
	input b,
	input sel,
	output y
	);

	wire not_s;
	wire and1;
	wire and2;

	not not1(not_s,sel);
	and AND1(and1,a,not_s);
	and AND2(and2,b,sel);
	or OR(y,and1,and2);

endmodule
