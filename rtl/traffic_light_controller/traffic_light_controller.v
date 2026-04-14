`timescale 1us/1ns
module traffic_light_controller #(
	parameter	RED_TIME = 5,
			GREEN_TIME = 5,
			YELLOW_TIME = 3
	)(
	input clk,
	input reset,
	output reg red,
	output reg green,
	output reg yellow
	);

localparam	RED = 2'b00,
		        GREEN = 2'b01,
		        YELLOW = 2'b10;


	reg [1:0]state,next_state;
	reg [3:0]count;

always @(posedge clk or posedge reset) begin
	if(reset) begin
	state <= RED;
	count <= 0;
end
else begin
	if(state != next_state)
	count <=0;
else
	count <= count + 1;

   state <= next_state;
  end
end

always @(*) begin
	case(state) 
	RED:
		next_state = (count == RED_TIME)? GREEN : RED;
	GREEN:
		next_state = (count == GREEN_TIME)? YELLOW : GREEN;
	YELLOW:
		next_state = (count == YELLOW_TIME)? RED : YELLOW;
	default:
		next_state = RED;
endcase
end

always @(*) begin
	red	= (state == RED);
	green	= (state == GREEN);
	yellow	= (state == YELLOW);
end

endmodule

 

