`timescale 1ns/1ns
module UpCnt4(input clk, Clk_EN, rst_cnt, inc_cnt, output reg[3:0]Count_out, output Co);
  always @(posedge clk, posedge rst_cnt) begin
    if (rst_cnt)
      Count_out <= 4'd5;
      
   else if (inc_cnt)
      Count_out <= Clk_EN ? (Count_out+1) : Count_out;
  end
  assign Co = (inc_cnt) ? &{Count_out,Clk_EN} : 1'b0;

endmodule
