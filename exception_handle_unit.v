`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:17 12/03/2015 
// Design Name: 
// Module Name:    exception_handle_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module exception_handle_unit(instruct,
							overflow,
							exception_flag);
	input [15:0] instruct;
	input overflow;
	

	
	output exception_flag;
	reg exception_flag;
	
	always @ (*)
		begin
			
			case(instruct[15:12])
				4'h 0F: exception_flag <= 1;
				
				4'h 0B:exception_flag<= 1;
				
				4'h 08:exception_flag <= 1;
				
				4'h 05:exception_flag <= 1;
				
				4'h 04:exception_flag <= 1;
				
				4'h 06:exception_flag <= 1;
				
				4'h 0C:exception_flag <= 1;
				
				4'h 0:exception_flag <= 1;
				
				default: 	begin
								exception_flag <= 0;
								$display("An unrecoverable System Error has Occured.");
								end
			endcase
			if(!overflow)
						begin
							exception_flag <= 0;
							$display("An unrecoverable System Error has Occured.");
						end
			else 
				exception_flag = 1;
		end
endmodule

		
				
				
				