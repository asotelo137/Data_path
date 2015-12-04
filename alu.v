`timescale 1ns / 1ps

module alu(a,b,result,opcode, remainder,overflow);


input signed [ 15:0 ] a,b;
input [3:0] opcode;
output reg[ 31:0 ]result;
output reg[15:0] remainder;
output reg overflow;
integer i;
integer temp;




//Overflow detection, result is by default 32 bits. WHen doing addition or subtraction
//we only output teh first 15 bits, if the sign but is not what it should be then an overflow =0 is thrown
//although result is 32 bits and we can output a correct result if we look at the entire result
//we can only do calculation of add/sub with a 15 bit result therefore overflow is seen on result[15] as the sign bit.
always @(a or b or opcode) 
	
	

	begin
	
		case (opcode)
		0: begin
					//need blocking so that resultcan have the correct value when we do our checks for overflow.
					result = a + b ;
					remainder =0;
					
				//check for overflow
					if(a > 0 && b >0 && result[15] == 1)  
					begin
							overflow = 0;//active low
					end
					if(a < 0 && b < 0 && result[15] == 1) //case two positives = positive 
					begin
							overflow = 0;//active low
					end
					if(a > 0 && b < 0 && a[14:0]> b[14:0] && result[15] == 0) //a is pos b is neg, b is a larger abs value. must be neg.
					begin
							overflow = 0;//active low
					end
					
					if(a < 0 && b > 0 && a[14:0]> b[14:0] && result[15] == 0) //a is neg b is pos, b is a larger abs value. must be pos.
					begin
							overflow = 0;//active low
					end
					
					if(a > 0 && b < 0 && a[14:0]> b[14:0] && result[15] == 1) //a is pos b is neg, a is a larger abs value. must be pos.
					begin
							overflow = 0;//active low
					end
					
					if(a < 0 && b > 0 && a[14:0]< b[14:0] && result[15] == 1) //a is neg b is pos, b is a larger abs value. must be pos.
					begin
							overflow = 0;//active low
					end
					
						begin
							overflow = 1; //no overflow
						end	
					
					
				end
				
			1: begin
					result = a - b;
					remainder = 0;
					
					//overflow logic
					
					 if(a > b && result[15] == 1)
						begin
							overflow = 0;
						end
					else if(a < b && result[15] == 0)
						begin
							overflow = 0;
						end
						
					else
						begin
						overflow =1;
						end
					
					
				end
			2: begin
					result <= a & b;
					remainder <= 0;
					overflow <= 1;
				end
			3:begin
					result <= a | b;
					remainder <=0;
					overflow <= 1;
				end
			4:begin
					result = a * b;
					if(a<0 && b<0) //if two negatives
						begin
						if(result[31] == 1) //must be equal to pos
							begin
							overflow =0;
							end
						end
					if(a<0 && b>0)
						begin
						if(result[31] == 0)
							begin
							overflow=0;
							end
						end
					if(a>0 && b<0)
						begin
						if(result[31]== 0)
							begin
							overflow=0;
							end
						end
						
					if(a>0 && b>0) //pos *pos = pos
						begin
						if(result[31]== 1)
							begin
							overflow=0;
							end
						end
							
						
					remainder <=0;
					
				end
			5:begin
					result<= a / b;
					remainder <= a % b;
					overflow <= 1;
				end
			7:begin
					result<= a << b;
					remainder <= 0;
					overflow <= 1;
				end
			8:begin
				result <= a >> b;
				remainder <= 0;
				overflow <= 1;
				end
			9: begin
			
				temp = a;
				for (i = 0; i < b; i = i +1) begin
					temp = {temp[14:0], temp[15]};
					end
					result <=temp;
					remainder<=0;
					overflow <= 1;
					end
			11:begin
			
				temp = a;
				for (i = 0; i < b; i=i +1) begin
					temp = {temp[0], temp[15:1]};
					end
					result <=temp;
					remainder<=0;
					overflow <= 1;
				end				//rotate
			
				default: begin
						result <= 0;
						remainder <= 0;
						overflow <= 1;
					end
		endcase
	end


endmodule
