`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:05:28 12/01/2015
// Design Name:   shift_left
// Module Name:   C:/Users/soteloa/cpe142datpth/shifft_left_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_left
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifft_left_tb;

	// Inputs
	reg [15:0] input_value;

	// Outputs
	wire [15:0] shifted_value;

	// Instantiate the Unit Under Test (UUT)
	shift_left uut (
		.input_value(input_value), 
		.shifted_value(shifted_value)
	);
	always begin
	#5; clk = ~clk;
	end
	initial begin
		// Initialize Inputs
		
		input_value = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		input_value = 16'h 1111;
		
        
		// Add stimulus here

	end
      
endmodule

