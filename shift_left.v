`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:04:14 12/01/2015 
// Design Name: 
// Module Name:    shift_left 
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
module shift_left(input_value, shifted_value);
	// inputs
	input [15:0] input_value;
	//outputs
	output [15:0] shifted_value;
	reg [15:0] shifted_value;
	always
		begin
			shifted_value = input_value << 1;
		end
endmodule