	
	`timescale 1ns/1ns
	module Exp_Accelerator_TB();
		reg clk = 0;
		reg rst = 0; 
		reg start = 0;
		wire done;
		wire [1:0] intpart;
		wire [15:0] fracpart;
		Exp_Accelerator exp_acc(clk, rst, start, 
								done, intpart, fracpart);	
		always
			begin
			  #10 clk = ~clk;

		end
		initial begin 
			#5 rst = 1;
			#5 rst = 0;
			#15 start = 1'b1;
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 start = 1'b1; 
			#25 start = 1'b0;
			#2000 $stop;
		end
	endmodule




