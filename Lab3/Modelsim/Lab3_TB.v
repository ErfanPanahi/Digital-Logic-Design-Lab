`timescale 1ns/1ns

module Lab3_TB();

  reg rst;
  reg clk = 0;
  wire 	clk_out;
  reg 	[2:0] Load = 3'd0;
  wire 	[7:0] Amp_out;
  reg 	[1:0] Amp_selector = 2'd0;
  reg 	[2:0] func;
  reg 	[1:0] Phase_cntrl = 2'd0;
  wire 	[7:0] DDS_out;
  wire 	[7:0] MUX_out;
  wire  OUTPUT ;
  wire 	[7:0] Wave_Gen_out;
  
  
  Lab3 lab3(.clk(clk), .rst(rst), .Phase_cntrl(Phase_cntrl), .Load(Load), .Amp_selector(Amp_selector), .func(func), .clk_out(clk_out), .Amp_out(Amp_out), .DDS_out(DDS_out), .MUX_out(MUX_out), .OUTPUT(OUTPUT), .Wave_Gen_out(Wave_Gen_out));
  
  initial 
    begin
      #1 rst = 1'b1;
      #21 rst = 1'b0;
      #5 func = 3'b000;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b001;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b010;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b011;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b100;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b101;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #5000000 func = 3'b111;
      #2000000 Amp_selector = 2'd0;
      #2000000 Amp_selector = 2'd1;
      #2000000 Amp_selector = 2'd2;
      #2000000 Amp_selector = 2'd3;
      #2000000 $stop;
  end
  
  always
    begin
      #10 clk = ~clk;
  end
  
  
  
endmodule


