
	`timescale 1ns/1ns
	module FS_TB();
	  wire  clk_out;
	  reg [2:0] load = 3'd0;
	  reg rst;
	  reg clk = 0;
	  
	  Frequncy_Selector fs(clk, rst, load, clk_out);
	  
	  initial 
		begin
		  #1 rst = 1'b1;
		  #1 rst = 1'b0;
		  #5 load = 3'b000;
		  #50000 load = 3'b001;
		  #50000 load = 3'b010;
		  #50000 load = 3'b011;
		  #50000 $stop;
	  end
	  
	  always
		begin
		  #10 clk = ~clk;
	  end
	  
	endmodule

