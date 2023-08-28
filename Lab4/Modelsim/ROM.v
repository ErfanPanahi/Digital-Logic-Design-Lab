module ROM(input clk,input [7:0] adr, output reg [15:0] data);
	always @(adr) begin
		case(adr)
		  251: data = 16'h0000;
			252: data = 16'hFFFF;
			253: data = 16'h8000;// 1/2
			254: data = 16'h5555;// 1/3
			255: data = 16'h4000;// 1/4
		endcase
	end
endmodule






