module Amplitude_Selector(input [7:0] X, input [1:0] select, output reg[7:0] Y);
  always @(X)begin
  	case(select)
    	2'b00: Y <= X;
    	2'b01: Y <= {1'b0,X[7:1]};
    	2'b10: Y <= {2'b0,X[7:2]};
    	2'b11: Y <= {3'b0,X[7:3]};
        endcase
   end
endmodule