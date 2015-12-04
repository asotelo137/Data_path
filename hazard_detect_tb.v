`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:29 12/02/2015
// Design Name:   hazard_detect
// Module Name:   C:/Users/soteloa/cpe142datpth/hazard_detect_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hazard_detect
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hazard_detect_tb;

	// Inputs
	reg [15:0] instruction_ID;
	reg [15:0] instruction_EX;

	// Outputs
	wire halt;
	wire pc_enable;

	// Instantiate the Unit Under Test (UUT)
	hazard_detect uut (
		.instruction_ID(instruction_ID), 
		.instruction_EX(instruction_EX), 
		.halt(halt), 
		.pc_enable(pc_enable)
	); 

	initial begin
		// Initialize Inputs
		instruction_ID = 0;
		instruction_EX = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; instruction_ID = 16'ha43D;instruction_EX = 16'hB45E;
		#20; instruction_ID = 16'ha53D;instruction_EX = 16'hB45E;
        
		// Add stimulus here

	end
      
endmodule

