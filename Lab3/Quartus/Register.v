`timescale 1ns/1ns
module Register (input clk, rst, input [7:0] Y, output reg [7:0] B);
    always@(posedge clk, posedge rst)
        if(rst)
          B <= 8'd0;
        else
          B <= Y;
endmodule