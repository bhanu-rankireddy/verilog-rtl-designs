`timescale 1us/1ns
module tb_decoder3x8();
	reg[2:0]a;
	reg enable;
	wire[7:0]y;
	integer i;
decoder3x8 dut(
	.a(a),
	.enable(enable),
	.y(y)
	);

initial begin
	$monitor("time=%0t,|a=%d,enable=%b,|y=%b",$time,a,enable,y);
	
#1; a=0; enable=0;
	for(i=0;i<8;i=i+1)begin
	#1; a=i;enable=1;
end
#1; $stop;
end
endmodule
