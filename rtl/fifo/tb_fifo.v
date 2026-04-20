
`timescale 1us/1ns

module tb_fifo_sync();

reg clk;
reg reset;
reg wr_en;
reg rd_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

integer i;

// Reference model
reg [7:0] ref_mem [0:31];
integer wr_idx, rd_idx;


fifo_sync dut(
    .clk(clk),
    .reset(reset),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);


initial clk = 0;
always #5 clk = ~clk;


initial begin
    $monitor("time=%0t | wr=%b rd=%b din=%0d dout=%0d | full=%b empty=%b",
              $time, wr_en, rd_en, data_in, data_out, full, empty);
end

initial begin

    // Initialize
    reset = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;
    wr_idx = 0;
    rd_idx = 0;

    #10 reset = 0;

    for(i = 0; i < 5; i = i + 1) begin
        @(posedge clk);
        wr_en = 1;
        data_in = i + 1;

        ref_mem[wr_idx] = data_in;
        wr_idx = wr_idx + 1;
    end

    @(posedge clk);
    wr_en = 0;

    for(i = 0; i < 5; i = i + 1) begin

        // request read
        @(posedge clk);
        rd_en = 1;

        // next cycle: capture output
        @(posedge clk);
        rd_en = 0;

        #1; // allow data_out to settle

        if(data_out !== ref_mem[rd_idx]) begin
            $display("ERROR at time %0t: Expected=%0d Got=%0d",
                     $time, ref_mem[rd_idx], data_out);
            $stop;
        end
        else begin
            $display("PASS: Expected=%0d Got=%0d",
                     ref_mem[rd_idx], data_out);
        end

        rd_idx = rd_idx + 1;
    end

    $display("FIFO TEST PASSED!");
    $finish;

end

endmodule
