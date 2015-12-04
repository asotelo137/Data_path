`timescale 1ns / 1ps

module comparator( a , b, result ,compare_control  );

	input signed [15:0] a,b;
	output reg result;
	input[1:0] compare_control;

//cases for different types of comparisons

	always @ (a or b or result or compare_control) 
	begin
		case (compare_control) 
			//0 is check to see if a is less than b
			0 : begin
					if(a < b)
						begin
						result = 1;
						end
					else
						begin
						result = 0;
						end 
					end

			1 : begin
					if(a > b)
						begin
						result = 1;
						end
					else
						begin
						result = 0;
						end 
					end 
			2 : begin
					if(a == b)
						begin
						result = 1;
						end
					else
						begin
						result = 0;
						end 
					end 
		 
			default :  result = 0;
		endcase 
	end



endmodule
