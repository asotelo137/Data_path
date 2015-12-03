`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:18:13 12/01/2015
// Design Name:   if_df_buffer
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/if_id_bufferTB.v
// Project Name:  CPE142
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

module if_id_bufferTB;

	// Inputs
	reg clk;
	reg rst;
	reg flush;
	reg pc_buff_in;
	reg inst_buff_in;
	reg nop_in;
	reg nop_out;
	reg pc_buff_out;
	reg inst_buff_out;

	// Instantiate the Unit Under Test (UUT)
	if_df_buffer uut (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.pc_buff_in(pc_buff_in), 
		.inst_buff_in(inst_buff_in), 
		.nop_in(nop_in), 
		.nop_out(nop_out), 
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
		nop_out = 0;
		pc_buff_out = 0;
		inst_buff_out = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

