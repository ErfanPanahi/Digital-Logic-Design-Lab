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



