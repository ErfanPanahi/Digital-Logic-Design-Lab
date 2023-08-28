`timescale 1ns/1ns
module OnePulser_TB;
  reg ClkPB = 0;
  reg rst;
  reg clk = 0; 
  wire Clk_EN;
  OnePulser UUT (.clk(clk),.ClkPB(ClkPB),.rst(rst),.Clk_EN(Clk_EN));
  initial
    begin
      #1 rst = 1'b1;
      #5 rst = 1'b0;
      #100 ClkPB = 0;
      #100 ClkPB = 1;
      #50 ClkPB = 0;
      #100 $stop;
    end
    
    always
    begin
      #20 clk = ~clk;
    end
  endmodule
  

