`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:37:41 12/01/2015
// Design Name:   if_df_buffer
// Module Name:   C:/Users/soteloa/cpe142datpth/awesometb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: if_df_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module awesometb;

	// Inputs
	reg clk;
	reg rst;
	reg flush;
	reg [15:0] pc_buff_in;
	reg [15:0] inst_buff_in;
	reg nop_in;

	// Outputs

	wire [15:0] pc_buff_out;
	wire [15:0] inst_buff_out;

	// Instantiate the Unit Under Test (UUT)
	if_df_buffer uut (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.pc_buff_in(pc_buff_in), 
		.inst_buff_in(inst_buff_in), 
		.nop_in(nop_in), 
		.pc_buff_out(pc_buff_out), 
		.inst_buff_out(inst_buff_out)
	);
	always begin
		#5 clk = ~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		flush = 0;
		pc_buff_in = 0;
		inst_buff_in = 0;
		nop_in = 0;
		
		// Wait 100 ns for global reset to finish
      #100;
		#10 rst = 1;flush = 1; pc_buff_in = 16'h1234; inst_buff_in = 16'h4321; 
		#10 pc_buff_in = 16'h1111; inst_buff_in = 16'hFFFF;
		#10 pc_buff_in = 16'hAAAA; inst_buff_in = 16'h1597;
		#10 flush = 0;

	end
      
endmodule

