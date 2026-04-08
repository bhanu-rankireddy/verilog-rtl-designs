`timescale 1us/1ns
module counter_4bit_sync(
    input clk,
    input reset,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (reset)
        q <= 4'b0000;
    else
        q <= q + 1'b1;

end
endmodule
