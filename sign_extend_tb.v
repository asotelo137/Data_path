`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:34:20 12/01/2015
// Design Name:   sign_extend
// Module Name:   C:/Users/soteloa/cpe142datpth/sign_extend_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_extend_tb;

	// Inputs
	reg clk;
	reg [7:0] ext_in;

	// Outputs
	wire [15:0] extend_out;

	// Instantiate the Unit Under Test (UUT)
	sign_extend uut (
		.clk(clk), 
		.ext_in(ext_in), 
		.extend_out(extend_out)
	);
always begin
	#5; clk = ~clk;
end
	initial begin
		// Initialize Inputs
		clk = 0;
		ext_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#10; ext_in <= 8'b10000000;
		#50; ext_in <= 0;
		
        
		// Add stimulus here

	end
      
endmodule

