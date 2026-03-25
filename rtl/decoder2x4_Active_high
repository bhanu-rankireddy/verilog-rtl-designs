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
	
	wire not_x0,not_x1;


not NOT2(not_x0, x0);
not NOT3(not_x1, x1);

and AND1(y0,E,not_x0,not_x1);
and AND2(y1,E,not_x0,x1);
and AND3(y2,E,x0,not_x1);
and AND4(y3,E,x0,x1);

endmodule
