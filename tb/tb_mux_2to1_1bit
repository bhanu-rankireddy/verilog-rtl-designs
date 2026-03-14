`timescale 1us/1ns

module tb_mux_1bit();

	reg a;
	reg b;
	reg sel;
	wire y;
	

MUX_1bit dut(
	.a(a),
	.b(b),
	.sel(sel),
	.y(y)
	);

initial begin
	$monitor("time=%0t | a=%b b=%b sel=%b | y=%b", $time, a, b, sel, y);
	end

initial begin
#1; a = 1; b = 0; sel = 1;
#1; a = 0; b = 1; sel = 0;
#1; a = 0; b = 1; sel = 1;
#1; a = 0; b = 0; sel = 1;
#1; a = 1; b = 1; sel = 1;
#1; a = 0; b = 0; sel = 0;
#5; $stop;

	end
endmodule
