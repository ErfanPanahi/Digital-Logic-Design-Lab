
	`timescale 1ns/1ns	
	module Count_Exp(input clk, rst_count, inc_count,
				           output reg[7:0]address, output Co);
	  always @(posedge clk, posedge rst_count) begin
		if (rst_count)
		  address <= 8'd250;
		 
	  else if (inc_count)
		  address <= address + 1;
	  end
	  assign Co = (inc_count) ? &address : 1'b0;
	endmodule
