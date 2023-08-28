	`timescale 1ns/1ns
	module SSD(input [3:0]Count_out,
			   output reg[6:0]Display);
	  
	  always @(Count_out) begin
		case(Count_out)
		  4'b0000: Display = 7'b1000000;
		  4'b0001: Display = 7'b1111001;
		  4'b0010: Display = 7'b0100100;
		  4'b0011: Display = 7'b0110000;
		  4'b0100: Display = 7'b0011001;
		  4'b0101: Display = 7'b0010010;
		  4'b0110: Display = 7'b0000010;
		  4'b0111: Display = 7'b1111000;
		  4'b1000: Display = 7'b0000000;
		  4'b1001: Display = 7'b0010000;
		  4'b1010: Display = 7'b0001000;
		  4'b1011: Display = 7'b0000011;
		  4'b1100: Display = 7'b1000110;
		  4'b1101: Display = 7'b0100001;
		  4'b1110: Display = 7'b0000110;
		  4'b1111: Display = 7'b0001110;
		endcase
	  end
	  
	endmodule

