`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:48:13 11/28/2015
// Design Name:   adder
// Module Name:   C:/Users/School/CPE142/adderTB.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adderTB;

	// Inputs
	reg cin;
	reg [15:0] ina;
	reg [15:0] inb;

	// Outputs
	wire cout;
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.cin(cin), 
		.ina(ina), 
		.inb(inb), 
		.cout(cout), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		cin = 0;
		ina = 0;
		inb = 0;

		// Wait 100 ns for global reset to finish
		#100;
		cin = 0;
        ina = 100;
		  inb = 20;
		  #50;
		// Add stimulus here

	end
      
endmodule

