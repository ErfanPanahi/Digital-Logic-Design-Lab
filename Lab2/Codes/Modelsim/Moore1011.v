`timescale 1ns/1ns
module Moore1011(input clk, rst, Clk_EN, SerIn, Co,
                 output SerOut,
                 output reg SerOutValid, inc_cnt, rst_cnt);
  reg [2:0] ns, ps;
  always @(ps, SerIn, Clk_EN, Co) begin
    ns = 3'b000;
    case (ps)
      3'b000: ns = (Clk_EN & SerIn) ? 3'b001 : 3'b000;
      3'b001: ns = (Clk_EN & ~SerIn) ? 3'b010 : 3'b001;
      3'b010: begin
        if (Clk_EN == 1)
          ns = SerIn ? 3'b011 : 3'b000;
        else
          ns = 3'b010;
      end
      3'b011: begin
        if (Clk_EN == 1)
          ns = SerIn ? 3'b100 : 3'b010;
        else
          ns = 3'b011;
      end
      3'b100: ns = Co ? 3'b000 : 3'b100;
      default: ns = 3'b000;
    endcase
  end
  
  always @(ps) begin
    {SerOutValid, inc_cnt, rst_cnt} = 3'b000;
    case (ps)
      3'b000: rst_cnt = 1'b1;
      3'b100: {SerOutValid, inc_cnt} = 2'b11;
      default: {SerOutValid, inc_cnt, rst_cnt} = 3'b000;
    endcase
  end
  assign SerOut = SerOutValid ? SerIn : 1'bz;

  always @(posedge clk, posedge rst) begin
    if (rst)
      ps <= 3'b000;
    else
      ps <= ns;
  end

endmodule
