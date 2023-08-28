`timescale 1ns/1ns

module Waveform_TB();
  wire [7:0] Wave;
  reg [2:0] func;
  reg rst;
  reg clk = 0;
  
  WaveformGenerator WG(.clk(clk), .rst(rst), .func(func), .Wave(Wave));
  
  initial 
    begin
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #10 func = 3'b000;
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5000 func = 3'b001;
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5000 func = 3'b010;
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5000 func = 3'b011;
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5000 func = 3'b100;
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5000 func = 3'b101;  
      #10000 $stop;
  end
  
  always
    begin
      #1 clk = ~clk;
  end
  
  
  
endmodule

