`timescale 1us/1ns

module fifo_sync #(
    parameter DEPTH = 8,
    parameter WIDTH = 8
)(
    input clk,
    input reset,
    input wr_en,
    input rd_en,
    input [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out,
    output full,
    output empty
);

reg [WIDTH-1:0] mem [0:DEPTH-1];
reg [$clog2(DEPTH)-1:0] wr_ptr, rd_ptr;
reg [$clog2(DEPTH):0] count;



always @(posedge clk or posedge reset) begin
    if (reset) begin
        wr_ptr <= 0;
    end
    else if (wr_en && !full) begin
        mem[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        rd_ptr   <= 0;
        data_out <= 0;   
    end
    else if (rd_en && !empty) begin
        data_out <= mem[rd_ptr];
        rd_ptr   <= rd_ptr + 1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 0;
    else begin
        case ({wr_en && !full, rd_en && !empty})
            2'b10: count <= count + 1; // write only
            2'b01: count <= count - 1; // read only
            default: count <= count;   // no change / simultaneous
        endcase
    end
end

assign full  = (count == DEPTH);
assign empty = (count == 0);

endmodule
