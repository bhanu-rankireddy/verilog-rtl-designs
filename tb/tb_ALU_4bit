`timescale 1us/1ns
module tb_4bit_ALU();
	reg[3:0] A;
	reg[3:0] B;
	reg[2:0] sel;
	wire [3:0] Y;
	wire carry;
	wire borrow;
	wire zero;

ALU_4bit dut(
	.A(A),
	.B(B),
	.sel(sel),
	.Y(Y),
	.carry(carry),
	.borrow(borrow),
	.zero(zero)
	);

initial begin 
	$monitor ("time=%0t | A=%b B=%b sel=%b | Y=%b carry=%b borrow=%b zero=%b",
              $time, A, B, sel, Y, carry, borrow, zero);
	
	A = 4'b0101; B = 4'b0011; sel = 3'b000;
	
	#1	sel = 3'b001;
	#1	sel = 3'b010;
	#1	sel = 3'b011;
	#1	sel = 3'b100;
	#1	sel = 3'b101;
	#1	sel = 3'b110;
	#1	sel = 3'b111;

	// Test 2: Borrow example, 3 - 5
	#1 A  = 4'b0011; B = 4'b0101; sel = 3'b001;

	// Test 3: Zero example, 5 - 5
	#1 A = 4'b0101; B = 4'b0101; sel =3'b001;
	
	#1 $stop;
end
endmodule
	
