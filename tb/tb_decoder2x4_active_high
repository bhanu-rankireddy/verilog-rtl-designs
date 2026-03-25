`timescale 1us/1ns
module testbench_decoder2x4();
	reg x0;
	reg x1;
	reg E;
	wire y0;
	wire y1;
	wire y2;
	wire y3;
	integer i,j;


decoder2x4 dut(
	.x0(x0),
	.x1(x1),
	.E(E),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3));

initial begin
	$monitor("time=%0t,|x0=%b,x1=%b,E=%b,|y0=%b,y1=%b,y2=%b,y3=%b",$time,x0,x1,E,y0,y1,y2,y3);
	end

initial begin
	
	// Enable = 1 (active)
        E = 1;
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                #1 x0 = i; x1 = j;
            end
        end
	#1;
        // Enable = 0 (disabled)
        E = 0;
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                #1 x0 = i; x1 = j;
            end
        end

        #2 $stop;
	
end
endmodule
