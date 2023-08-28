`timescale 1ns/1ns

module WaveformGenerator(input clk, rst, input[2:0] func, output reg[7:0] Wave);
    
  wire [7:0] Reciprocal, Square, Triangle;
  reg  signed [15:0] sin, cos;
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
	
	assign Reciprocal = 8'd255 / (9'd256 - counter);
	assign Square = (counter <= 8'd128)? 8'd255 : 8'b0;
	assign Triangle = counter < 8'd128 ? (2*counter) : 8'd255 - (2*counter);
	
	always @(posedge clk, posedge rst) begin
	   if (rst) begin
	     sin <= 16'd0;
	     cos <= 16'd30000;
	     end
	   else begin
	     sin = sin + {{6{cos[15]}},cos[15:6]};
	     cos = cos - {{6{sin[15]}},sin[15:6]};
	     end
	end
	
	always @(posedge clk, posedge rst) begin
    
    case(func)
      // Reciprocal
      3'b000: Wave = Reciprocal;
      // Square
      3'b001: Wave = Square;
      // Triangle
      3'b010: Wave = Triangle;   
      // Sine
      3'b011: Wave = sin[15:8] + 8'd127;
      // Full-wave rectified
      3'b100: Wave = sin[15] ? -sin[15:8] + 8'd127 : sin[15:8] + 8'd127;
      //Half-wave rectified
      3'b101: Wave = sin[15] ? 8'd127 : sin[15:8] + 8'd127;
      default: Wave = 8'd128;
    endcase
    
  end
  
endmodule
