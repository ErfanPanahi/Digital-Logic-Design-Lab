module Controller_Exp(input clk, rst, start, Co, eng_done,
		    output reg done, inc_count, rst_count, eng_start);

	reg [2:0] ps, ns;
	parameter [2:0]
	Idle = 0, Initialization = 1, Begin = 2, Exp_calc = 3, Done_Exp = 4, Done = 5, Waiting1 = 6, Waiting2 = 7;
	always@(ps, Co, start, eng_done)begin
		ns = Idle;
		case(ps)
			Idle:
				ns = (start) ? Initialization : Idle;
			Initialization:
				ns = (start) ? Initialization : Begin;
			Begin:
				ns = Co ? Done : Exp_calc;
			Exp_calc:
				ns = Done_Exp;
			Done_Exp:
				ns = eng_done ? Waiting1 : Done_Exp;
			Done:
				ns = start ? Initialization : Done;
			Waiting1:
			  ns = start ? Waiting2 : Waiting1;
			Waiting2:
			  ns = start ? Waiting2 : Begin;
		endcase
	end

	always@(ps, Co, start, eng_done)begin
	done = 1'b0; rst_count = 1'b0; inc_count = 1'b0; eng_start = 1'b0; 
		case(ps)
			//Idle:
			//new_state:
			Initialization: begin
				rst_count = 1'b1;
			end
			Begin: begin
				inc_count = 1'b1;
			end
			Exp_calc: begin
				eng_start = 1'b1;
			end
			//Done_Exp:
			Done: begin
				done = 1'b1;
			end
		endcase
	end

	always@(posedge clk,posedge rst)begin
		if(rst == 1'b1)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule




