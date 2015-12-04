`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:21:18 12/01/2015
// Design Name:   if_df_buffer
// Module Name:   C:/Users/soteloa/cpe142datpth/superawesometb.v
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

module superawesometb;

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
        
		// Add stimulus here

	end
      
endmodule

