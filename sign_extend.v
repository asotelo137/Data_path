`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:28:13 12/01/2015 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(clk,ext_in, extend_out);
	
		input clk;
		input [7:0] ext_in;
	
		output [15:0] extend_out;
		
		reg [15:0] extend_out;
		
		always @(posedge clk)
			begin 
				extend_out <= { {8{ext_in[7]}}, ext_in[7:0] };
			end   
	
endmodule
