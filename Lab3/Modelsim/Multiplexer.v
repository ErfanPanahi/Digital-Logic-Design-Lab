`timescale 1ns/1ns

module Multiplexer (input [7:0] A,B, input sel, output [7:0] Y);
    assign Y = sel ? A : B;
endmodule



