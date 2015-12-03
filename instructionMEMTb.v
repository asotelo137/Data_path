`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:58:10 12/01/2015
// Design Name:   instructionMEM
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/instructionMEMTb.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instructionMEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instructionMEMTb;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] pcIn;

	// Outputs
	wire [15:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	instructionMEM uut (
		.clk(clk), 
		.rst(rst), 
		.pcIn(pcIn), 
		.instruction(instruction)
	);
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		pcIn = 0;
	
		// Wait 100 ns for global reset to finish
		#100; rst = 1;
		
		#10; pcIn = 0;
		#10; pcIn = 2;
		#10; pcIn = 4;
		#10; pcIn = 6;
		#10; pcIn = 8;
		#10; pcIn = 10;
		#10; pcIn = 12;
		#10; pcIn = 14;
		#10; pcIn = 16;
		#10; pcIn = 18;
		
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

