`timescale 1us/1ns
module decoder2x4(
	input x0,
	input x1,
	input E,
	output y0,
	output y1,
	output y2,
	output y3
	);
	
	wire E_n,not_x0,not_x1;

not NOT1(E_n,E);
not NOT2(not_x0, x0);
not NOT3(not_x1, x1);

and AND1(y0,E_n,not_x0,not_x1);
and AND2(y1,E_n,not_x0,x1);
and AND3(y2,E_n,x0,not_x1);
and AND4(y3,E_n,x0,x1);

endmodule
