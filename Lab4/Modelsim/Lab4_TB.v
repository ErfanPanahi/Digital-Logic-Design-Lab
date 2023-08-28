`timescale 1ns/1ns

module Lab4_TB();

	reg clk = 0;
	reg rst = 0; 
	reg start = 0;
	wire done;
	wire [1:0] intpart;
	wire [15:0] fracpart;
	wire [6:0] Display1, Display2, Display3, Display4;
	
	Lab4 lab4(
	done,
	clk,
	rst,
	start,
	Display1,
	fracpart,
	Display2,
	Display3,
	Display4,
	intpart);
	
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
    #2500 start = 1'b0;
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




