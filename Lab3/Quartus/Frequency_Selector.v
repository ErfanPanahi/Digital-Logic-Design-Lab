`timescale 1ns/1ns

module Frequncy_Selector(input clk, rst, input [2:0] load, output clk_out);
  
  reg [8:0] cnt;
  
  
  assign clk_out = &cnt;
  
	
	always @(posedge clk, posedge rst) begin
	  if (rst)
		 cnt <= 9'd0;
	  else if (clk_out)
	    cnt <= {load,6'b000000};
	  else
		  cnt <= cnt + 1;
	end
		
		
endmodule
