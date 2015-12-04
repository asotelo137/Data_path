`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:53 11/29/2015
// Design Name:   muxA
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/muxATB.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: muxA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxATB;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg select;

	// Outputs
	wire [15:0] c;

	// Instantiate the Unit Under Test (UUT)
	muxA uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1; b = 2; select = 0;
		#10;
		a = 1; b = 2; select = 1;
		#10;
		a = 1; b = 2; select = 2;
		#10;
		a = 1200; b = 100; select = 0;
		#10;
		a = 1200; b = 0; select = 1;

		$finish;
		
		
		
        
		// Add stimulus here

	end
      
endmodule

