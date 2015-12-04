`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:14 12/02/2015 
// Design Name: 
// Module Name:    hazard_detect_unit 
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
module hazard_detect(
	instruction_ID,
	instruction_EX,
	halt,
	pc_enable);
	
	input [15:0] instruction_ID,
				 instruction_EX;
		
	output pc_enable,halt;
	
	reg pc_enable,halt;
	always@(*)
	begin
		if((instruction_EX[15:12] == 4'hB) &&
			((instruction_EX[11:8] == instruction_ID[11:8])
			||(instruction_EX[11:8] == instruction_ID[7:4])))
			begin
				halt <= 0;
				pc_enable <= 1;
			end
		else
			begin
				halt <= 1;
				pc_enable <= 0;
			end
				
	end
endmodule
		
		
		
		
