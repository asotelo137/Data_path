`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:59 12/02/2015
// Design Name:   main_memory
// Module Name:   C:/Users/soteloa/cpe142datpth/main_memory_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_memory_tb;

	// Inputs
	reg clk;
	reg rst;
	reg mem_write;
	reg mem_read;
	reg [15:0] address;
	reg [15:0] data_in;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	main_memory uut (
		.clk(clk), 
		.rst(rst), 
		.mem_write(mem_write), 
		.mem_read(mem_read), 
		.address(address), 
		.data_in(data_in), 
		.data_out(data_out)
	);
	always begin
	#5; clk =~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		mem_write = 1;
		mem_read = 1;
		address = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; rst=1;mem_write =1; mem_read =1; 
		#20; address = 16'h 1234;
				data_in = 16'h 2bcd;
			  mem_write = 0;
		#20;mem_write =1;
			 mem_read =0; 
			 
		
        
		// Add stimulus here

	end
      
endmodule

