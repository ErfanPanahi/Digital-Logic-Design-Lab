	
	
	module Datapath_Exp(input clk, rst, rst_count, inc_count, eng_start
						,output Co, eng_done, output[1:0] intpart, output[15:0] fracpart);
		wire [7:0] address;
		wire [15:0] data;
		Count_Exp cntexp(clk, rst_count, inc_count,
							   address, Co);
		ROM rom1(clk, address, data);
		exponential exp(clk, rst, eng_start, data, 
						  eng_done, intpart, fracpart);
	endmodule

	module Exp_Accelerator(input clk, rst, start, 
		                   output done, output[1:0] intpart, output [15:0]fracpart);
		wire Co, eng_start, eng_done, inc_count, rst_count;
		Controller_Exp controlexp(clk, rst, start, Co, eng_done,
									done, inc_count, rst_count, eng_start);
		Datapath_Exp dPexp(clk, rst, rst_count, inc_count, eng_start
							 ,Co, eng_done, intpart, fracpart);
	endmodule




