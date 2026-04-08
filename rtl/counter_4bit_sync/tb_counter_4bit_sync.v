`timescale 1us/1ns
module tb_counter_4bit_sync();

reg clk;
reg reset;
wire [3:0] q;

counter_4bit_sync dut(
    .clk(clk),
    .reset(reset),
    .q(q)
);

initial begin
    clk = 0;
    forever begin
        #5 clk = ~clk;
    end
end

initial begin
    $monitor("time=%0t | clk=%b reset=%b | q=%b", $time, clk, reset, q);

    reset = 1;

    #10 reset = 0;   
    #50 reset = 1;   
    #10 reset = 0;   
    #30 $stop;
end

endmodule
