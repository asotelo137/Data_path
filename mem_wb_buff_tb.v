`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:47:46 12/02/2015
// Design Name:   mem_wb_buff
// Module Name:   C:/Users/soteloa/cpe142datpth/mem_wb_buff_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_wb_buff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mem_wb_buff_tb;

	// Inputs
	reg clk;
	reg rst;
	reg halt;
	reg [15:0] write_back_ctrl_sgnl;
	reg [15:0] alu_result_bottom_half;
	reg [15:0] memory_data_in;
	reg [15:0] inst_buff_in;

	// Outputs
	wire [15:0] write_back_ctrl_sgnl_out;
	wire [15:0] alu_result_bottom_half_out;
	wire [15:0] memory_data_out;
	wire [15:0] inst_buff_out;

	// Instantiate the Unit Under Test (UUT)
	mem_wb_buff uut (
		.clk(clk), 
		.rst(rst), 
		.halt(halt), 
		.write_back_ctrl_sgnl(write_back_ctrl_sgnl), 
		.alu_result_bottom_half(alu_result_bottom_half), 
		.memory_data_in(memory_data_in), 
		.inst_buff_in(inst_buff_in), 
		.write_back_ctrl_sgnl_out(write_back_ctrl_sgnl_out), 
		.alu_result_bottom_half_out(alu_result_bottom_half_out), 
		.memory_data_out(memory_data_out), 
		.inst_buff_out(inst_buff_out)
	);
	always begin
	#5; clk=~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		halt = 0;
		write_back_ctrl_sgnl = 0;
		alu_result_bottom_half = 0;
		memory_data_in = 0;
		inst_buff_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#20; rst = 1; halt = 1; 
		write_back_ctrl_sgnl = 16'h aaaa;
		alu_result_bottom_half = 16'hdddd;
		memory_data_in = 16'heeee;
		inst_buff_in = 16'hffff;
		#20; halt =0;
		write_back_ctrl_sgnl = 16'h ffff;
		alu_result_bottom_half = 16'h cccc;
		memory_data_in = 16'h bbbb;
		inst_buff_in = 16'h aaaa;
		#20;
		halt=1;
		#20;
		write_back_ctrl_sgnl = 16'h 1234;
		alu_result_bottom_half = 16'h 5555;
		memory_data_in = 16'h 6523;
		inst_buff_in = 16'h 1598;
        
		// Add stimulus here

	end
      
endmodule

