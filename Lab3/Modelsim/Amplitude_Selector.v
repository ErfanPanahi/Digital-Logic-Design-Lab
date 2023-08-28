	
	
	module Amplitude_Selector(input [7:0] X, input [1:0] select,
							  output reg[7:0] Y);
	  always @(X)begin
		case(select)
			2'b00: Y <= X;
			2'b01: Y <= {X[6:0],1'b0};
			2'b10: Y <= {X[5:0],2'b0};
			2'b11: Y <= {X[4:0],3'b0};
			endcase
	   end
	endmodule
	
	