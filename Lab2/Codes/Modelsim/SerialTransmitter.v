`timescale 1ns/1ns
module SerialTransmitter(input clk, ClkPB, SerIn, rst, 
                         output [6:0] Display,
                         output SerOut, SerOutValid);
  wire Clk_EN, Co, inc_cnt, rst_cnt;
  wire [3:0] Count_out; 
  
  OnePulser op(clk, ClkPB, rst, Clk_EN);
  Moore1011 sd(clk, rst, Clk_EN, SerIn, Co,
               SerOut, SerOutValid, inc_cnt, rst_cnt);
  UpCnt4 cnt(clk, Clk_EN, rst_cnt, inc_cnt, Count_out, Co);
  SSD ssd(Count_out, Display);
  
endmodule
