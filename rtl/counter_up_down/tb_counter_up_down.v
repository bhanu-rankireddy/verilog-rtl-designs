`timescale 1us/1ns
module tb_up_down_counter();

reg clk;
reg reset;
reg up_down;
wire [3:0] q;

counter_up_down uut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


initial begin
    $monitor("time=%0t | clk=%b reset=%b up_down=%b | q=%b", $time, clk, reset, up_down, q);
end

// Stimulus
initial begin
    reset = 1;
    up_down = 1;
    #10;

    reset = 0;
    #50;

    up_down = 0;
    #50;

    reset = 1;
    #10;
    reset = 0;

    #30;

    $finish;
end

endmodule
