`timescale 1ns/1ns

module DDS_TB();
  wire [7:0] DDS_out, Register_out, Adder_out;
  reg [1:0] Phase_cntrl = 2'd0;
  reg rst;
  reg clk = 0;
  
  DDS dds(.clk(clk), .rst(rst), .Phase_cntrl(Phase_cntrl), .DDS_out(DDS_out), .Register_out(Register_out), .Adder_out(Adder_out));
  
  initial 
    begin
      #1 rst = 1'b1;
      #1 rst = 1'b0;
      #5 Phase_cntrl = 2'b00;
      #5000 Phase_cntrl = 2'b01;
      #5000 Phase_cntrl = 2'b10;
      #5000 Phase_cntrl = 2'b11;
      #5000 $stop;
  end
  
  always
    begin
      #10 clk = ~clk;
  end
  
  
  
endmodule
