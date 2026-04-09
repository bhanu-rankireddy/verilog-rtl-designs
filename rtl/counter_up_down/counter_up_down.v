`timescale 1us/1ns
module counter_up_down (
    input clk,
    input reset,
    input up_down,
    output reg [3:0] q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 4'b0000;
    else if (up_down)
        q <= q + 1'b1;
    else
        q <= q - 1'b1;
end

endmodule
