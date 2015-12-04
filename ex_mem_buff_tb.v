`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:08 12/01/2015
// Design Name:   ex_mem_buffer
// Module Name:   C:/Users/soteloa/cpe142datpth/ex_mem_buff_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex_mem_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex_mem_buff_tb;

	// Inputs
	reg clk;
	reg rst;
	reg halt;
	reg [15:0] write_back_ctrl_sgnl;
	reg [15:0] memory_ctrl_sgnl;
	reg [15:0] alu_result_top_half;
	reg [15:0] alu_result_bottom_half;
	reg [15:0] sign_ext_buff_in;
	reg [15:0] inst_buff_in;

	// Outputs
	wire [15:0] write_back_ctrl_sgnl_out;
	wire [15:0] memory_ctrl_sgnl_out;
	wire [15:0] alu_result_top_half_out;
	wire [15:0] alu_result_bottom_half_out;
	wire [15:0] sign_ext_buff_out;
	wire [15:0] inst_buff_out;

	// Instantiate the Unit Under Test (UUT)
	ex_mem_buffer uut (
		.clk(clk), 
		.rst(rst), 
		.halt(halt), 
		.write_back_ctrl_sgnl(write_back_ctrl_sgnl), 
		.memory_ctrl_sgnl(memory_ctrl_sgnl), 
		.alu_result_top_half(alu_result_top_half), 
		.alu_result_bottom_half(alu_result_bottom_half), 
		.sign_ext_buff_in(sign_ext_buff_in), 
		.inst_buff_in(inst_buff_in), 
		.write_back_ctrl_sgnl_out(write_back_ctrl_sgnl_out), 
		.memory_ctrl_sgnl_out(memory_ctrl_sgnl_out), 
		.alu_result_top_half_out(alu_result_top_half_out), 
		.alu_result_bottom_half_out(alu_result_bottom_half_out), 
		.sign_ext_buff_out(sign_ext_buff_out), 
		.inst_buff_out(inst_buff_out)
	);
	always begin
	#5; clk = ~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		halt = 0;
		write_back_ctrl_sgnl = 0;
		memory_ctrl_sgnl = 0;
		alu_result_top_half = 0;
		alu_result_bottom_half = 0;
		sign_ext_buff_in = 0;
		inst_buff_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; rst = 1; halt = 1; 
		write_back_ctrl_sgnl = 16'h aaaa;
		memory_ctrl_sgnl = 16'hbbbb;
		alu_result_top_half = 16'hcccc;
		alu_result_bottom_half = 16'hdddd;
		sign_ext_buff_in = 16'heeee;
		inst_buff_in = 16'hffff;
		#20; halt =0;
		write_back_ctrl_sgnl = 16'h ffff;
		memory_ctrl_sgnl = 16'h eeee;
		alu_result_top_half = 16'h dddd;
		alu_result_bottom_half = 16'h cccc;
		sign_ext_buff_in = 16'h bbbb;
		inst_buff_in = 16'h aaaa;
		#20;
		halt=1;
		#20;
		write_back_ctrl_sgnl = 16'h 1234;
		memory_ctrl_sgnl = 16'h 4561;
		alu_result_top_half = 16'h 7894;
		alu_result_bottom_half = 16'h 5555;
		sign_ext_buff_in = 16'h 6523;
		inst_buff_in = 16'h 1598;
		
		
        
		// Add stimulus here

	end
      
endmodule

