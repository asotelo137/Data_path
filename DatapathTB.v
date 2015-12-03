`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:46:15 12/01/2015
// Design Name:   Datapath
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/DatapathTB.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DatapathTB;

	// Inputs
	reg clk;
	reg rst;
	reg flush;

	// Outputs
	wire [15:0] instructionBuffOut;
	wire [15:0] pcBuffOut;

	// Instantiate the Unit Under Test (UUT)
	Datapath uut (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.instructionBuffOut(instructionBuffOut), 
		.pcBuffOut(pcBuffOut)
	);
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
	clk =0;
		rst = 0;
		flush = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; rst = 1; flush = 1;
		#200;
		#20 ;rst =1; flush =0;
		#20 ;rst =0; flush =1;
		#20 ;rst= 0; flush =0;
		$finish	;	
		
		
        
		// Add stimulus here

	end
	
      
endmodule

