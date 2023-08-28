	
	`timescale 1ns/1ns
	module SerialTransmitter_TB;
		reg rst, clk = 0, clkPB, SerIn;
		wire [6:0] Display;
		wire SerOut, SerOutValid;

		SerialTransmitter ST(clk, clkPB, SerIn,
							 rst, Display, SerOut,
							 SerOutValid);
		
		always begin
			#10 clk=~clk;
		end

		initial begin 
			#1 rst = 1;
			#1 rst = 0;
			#1 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#11 clkPB = 0;
			#20 SerIn = 0;
			#1 clkPB = 1;
			#10 SerIn = 1;
			#52 SerIn = 0;
			#1 clkPB = 1;
			#21 clkPB = 0;
			#21 clkPB = 1;
			#10 SerIn = 1;
			#11 clkPB = 0;
			#42 clkPB = 1;
			#41 clkPB = 0;
			#41 clkPB = 1;
			#41 clkPB = 0;
			#41 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#31 clkPB = 1;
			#41 clkPB = 0;
			#20 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#31 clkPB = 0;
			#41 clkPB = 1;
			#41 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#31 clkPB = 0;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#30 SerIn = 1;
			#1 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 0;
			#10 SerIn = 0;
			#31 clkPB = 1;
			#20 SerIn = 1;
			#1 clkPB = 0;
			#20 SerIn = 0;
			#1 clkPB = 1;
			#10 SerIn = 1;
			#11 clkPB = 0;
			#42 clkPB = 1;
			#10 SerIn = 0;
			#11 clkPB = 0;
			#21 clkPB = 1;
			#10 SerIn = 1;
			#32 clkPB = 0;
			#21 clkPB = 1;
			#41 clkPB = 0;
			#41 clkPB = 1;
			#41 clkPB = 0;
			#41 clkPB = 1;
			#10 SerIn = 0;
			#10 SerIn = 1;
			#21 clkPB = 1;
			#100 $stop;
		end
	endmodule
