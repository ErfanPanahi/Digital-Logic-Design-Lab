`timescale 1 ns/1 ns

module Count_Exp_TB();

	reg clk = 0;
	reg rst_count = 0; 
	reg inc_count = 0;
	wire [7:0] address;
	
	Count_Exp cnt_exp(clk, rst_count, inc_count, address, Co);
	
	always
		begin
		  #10 clk = ~clk;

	  end
	
	initial begin 
	  #5 rst_count = 1;
	  #5 rst_count = 0;
		#15 inc_count = 1'b1;
		#35 inc_count = 1'b0; 
    #15 inc_count = 1'b1;
    #50 rst_count = Co;
    #50 rst_count = Co;
    
    
		#20 $stop;
	end

endmodule


