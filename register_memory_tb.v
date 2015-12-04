`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:08 12/01/2015
// Design Name:   register_memory
// Module Name:   C:/Users/soteloa/cpe142datpth/register_memory_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_memory_tb;

	// Inputs
	reg clk;
	reg rst;
	reg read_write_enable;
	reg [3:0] register_1;
	reg [3:0] register_2;
	reg [3:0] write_reg;
	reg [15:0] write_data;
	reg [15:0] write_reg_15;

	// Outputs
	wire [15:0] read_reg_1;
	wire [15:0] read_reg_2;
	wire [15:0] read_reg_15;

	// Instantiate the Unit Under Test (UUT)
	register_memory uut (
		.clk(clk), 
		.rst(rst), 
		.read_write_enable(read_write_enable), 
		.register_1(register_1), 
		.register_2(register_2), 
		.write_reg(write_reg), 
		.write_data(write_data), 
		.read_reg_1(read_reg_1), 
		.read_reg_2(read_reg_2), 
		.write_reg_15(write_reg_15), 
		.read_reg_15(read_reg_15)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		read_write_enable = 0;
		register_1 = 0;
		register_2 = 0;
		write_reg = 0;
		write_data = 0;
		write_reg_15 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; rst =1;read_write_enable =1; register_1 = 5; register_2= 9;
		#20; read_write_enable = 0; write_reg = 1; write_data = 16'hABCD;
		#20; register_1 = 7; register_2 = 10; read_write_enable=1; 
		#20; register_1 = 3; register_2 = 14;
		#20; register_1 = 0; register_2 = 7; 
		#20; read_write_enable = 0; write_reg_15 = 16'h AAAA; write_data = 16'hBBBB;
		#20; read_write_enable =1;
		#20; read_write_enable = 0; write_reg_15 = 16'h 1234; write_data = 16'h5879;
		#20; read_write_enable =1;
		

		// Add stimulus here

	end
      
endmodule

