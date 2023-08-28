`timescale 1ns/1ns
module Adder (input [1:0] A, input [7:0] B, output [7:0] Y);
    assign Y = {6'd0,A} + B;
endmodule

