`timescale 1us/1ns

module tb_4bit_adder();
	reg[3:0] a;
	reg[3:0] b;
	reg Cin;
	wire[3:0] sum;
	wire Cout;	
	integer i,j;

ripple_adder_4bit dut(
	.a(a),
	.b(b),
	.carry_in(Cin),
	.sum(sum),
	.carry_out(Cout)
	);
initial begin	
	$monitor("time=%0t,|a=%b, b=%b, carry_in=%0b,| sum=%0d, carry_out=%b",$time,a, b, Cin, sum, Cout);
    end  

	initial begin
        #1; a = 4'b0000; b = 4'b0000; Cin = 0;
        #1; a = 4'b0000; b = 4'b0000; Cin = 1;
        #1; a = 4'b0001; b = 4'b0001; Cin = 0;
        #1; a = 4'b0001; b = 4'b0001; Cin = 1;
        #1; a = 4'd3;    b = 4'd6;    Cin = 0;
	#1; a = 4'd10;	 b = 4'd6;    Cin = 1;
	#2; $stop;
	for(i=0;i<2;i=i+1)begin
		for(j=0;j<2;j=j+1)begin
		#1; a=i;b=j;Cin=0;
		end
	end
end

endmodule

