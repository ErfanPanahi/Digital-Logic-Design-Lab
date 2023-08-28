`timescale 1ns/1ns

module OnePulser(input clk, ClkPB, rst, output Clk_EN);
  reg [1:0] ns, ps;
  
  always @(ClkPB, ps) begin
    ns = 2'b00;
    case(ps)
      2'b00: ns = ClkPB ? 2'b01 : 2'b00;
      2'b01: ns = 2'b10;
      2'b10: ns = ClkPB ? 2'b10 : 2'b00;
      default: ns = 2'b00;
    endcase
  end 
  
  always @(posedge clk, posedge rst) begin
    if (rst)
      ps <= 2'b00;
    else
      ps <= ns;
  end
  
  assign Clk_EN = (ps == 2'b01) ? 1'b1 : 1'b0;
    
endmodule
