`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:48 11/29/2015
// Design Name:   pc
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/pcTb.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pcTb;

	// Inputs
	reg clk;
	reg rst;
	reg enable;
	reg [15:0] in;

	// Outputs
	wire [15:0] address;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.clk(clk), 
		.rst(rst), 
		.enable(enable), 
		.in(in), 
		.address(address)
	);
//clock


	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		enable = 0;
		in = 0;
		
	end
		
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		// Wait 100 ns for global reset to finish
		#100;
		#10 rst = 0; enable = 0; in = 0;
		#10 rst = 1; enable = 1; in = 6555;
		#10 rst = 1; enable = 1; in = 50;
		#10 rst = 1; enable = 0; in = 1000;
		#10 rst = 0; enable = 0; in = 8900;
		#10;

		$finish;
		// Add stimulus here
	end
      
endmodule

