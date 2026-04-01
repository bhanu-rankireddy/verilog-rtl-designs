`timescale 1us/1ns
module ALU_4bit(
	input[3:0]A,
	input[3:0]B,
	input[2:0]sel,
	output reg carry,
	output reg borrow,
	output reg[3:0] Y,
	output zero	
	);

always @(*) begin
	Y      = 4'b0000;
	carry  = 1'b0;
	borrow = 1'b0;

	case(sel)
	3'b000: begin
	{carry,Y}	= A + B;
     end
	3'b001: begin
	Y		= A - B;
	borrow = (A < B);
    end
	3'b010: begin
	Y		= A & B;
    end
	3'b011: begin
	Y		= A | B;
    end
	3'b100: begin
	Y		= A ^ B;
    end
	3'b101: begin
	Y		= ~A;
    end
	3'b110: begin
	Y		= A << 1;
    end
	3'b111: begin
	Y		= A >> 1;
    end
	default: begin
	Y      = 4'b0000;
	carry  = 1'b0;
	borrow = 1'b0;
	end
   endcase
end

  assign zero = (Y == 4'b0000);	
endmodule


