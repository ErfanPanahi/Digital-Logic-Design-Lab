	
	`timescale 1 ns/1 ns
	module TestBench();
		reg clk = 0;
		reg rst; 
		reg start = 0;
		reg [15:0] x;
		wire done;
		wire [1:0] intpart;
		wire [15:0] fracpart;
		
		exponential exp (clk, rst, start, x, done, 
						 intpart, fracpart);
		
		always
			begin
			  #10 clk = ~clk;
		  end
		
		initial begin 
		  #5 rst = 1;
		  #5 rst = 0;
			#5 start = 1'b1;
			#35 start = 1'b0; 
			#20 x = 16'h0000;
			#5 start = 1'b1;
			#35 start = 1'b0; 
			#2000 x = 16'hFFFF;
			#5 start = 1'b1;
			#35 start = 1'b0; 
			#2000 x = 16'h8000;
			#5 start = 1'b1; 
			#35 start = 1'b0; 
			#2000 x = 16'h2492;
			#2000 x = 16'h2000;
			#5000 $stop;
		end
	endmodule


