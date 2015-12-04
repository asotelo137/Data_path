`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:57:15 12/03/2015
// Design Name:   exception_handle_unit
// Module Name:   C:/Users/soteloa/cpe142datpth/exception_handle_unit_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: exception_handle_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exception_handle_unit_tb;

	// Inputs
	reg [15:0] instruct;
	reg overflow;

	// Outputs
	wire exception_flag;

	// Instantiate the Unit Under Test (UUT)
	exception_handle_unit uut (
		.instruct(instruct), 
		.overflow(overflow), 
		.exception_flag(exception_flag)
	);

	initial begin
		// Initialize Inputs
		instruct = 0;
		overflow = 1;

		// Wait 100 ns for global reset to finish
		#100;
		#20 instruct = 16'h f123;
		#20 instruct = 16'h B123;
		#20 instruct = 16'h 8123;
		#20 instruct = 16'h 5123;
		#20 instruct = 16'h 4123;
		#20 instruct = 16'h 6123;
		#20 instruct = 16'h c123;
		#20 instruct = 16'h 0123;
		#20 instruct = 16'h 2123;
		#20 instruct = 16'h B123;
		#20 overflow = 0;
		#20 overflow = 1;
        
		// Add stimulus here

	end
      
endmodule

