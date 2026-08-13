`timescale 1ns / 1ps

module digital_clock_tb;

reg clk;
reg reset;

wire [5:0] sec;
wire [5:0] min;
wire [4:0] hour;

digital_clock uut(
    .clk(clk),
    .reset(reset),
    .sec(sec),
    .min(min),
    .hour(hour)
);

// Clock generation (10 ns period)
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    // Run for 70 clock cycles
    #700;

    $finish;
end

initial begin
    $display(" Time\tHour\tMin\tSec");
    $monitor("%4t\t%02d\t%02d\t%02d",
             $time, hour, min, sec);
end

endmodule

