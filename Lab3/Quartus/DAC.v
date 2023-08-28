`timescale 1ns/1ns
module Digital_To_Analog(input clk, rst, input[7:0] X, output Y);
  reg [7:0] counter;
  wire co;
  
  always @(posedge clk, posedge rst) begin
		if (rst)
		  counter <= 8'd0;
		else if (co) 
		  counter <= 8'd0;
  		else
		  counter <= counter + 1;
  end
  
  assign co = &counter;
  assign Y  = (counter <= X)? 1'b1 : 1'b0;

endmodule

