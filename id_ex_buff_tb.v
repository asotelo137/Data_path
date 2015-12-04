`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:26:30 12/01/2015
// Design Name:   id_ex_buff
// Module Name:   C:/Users/soteloa/cpe142datpth/id_ex_buff_tb.v
// Project Name:  cpe142datpth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_ex_buff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_ex_buff_tb;

	// Inputs
	reg clk;
	reg rst;
	reg flush;
	reg halt;
	reg [15:0] write_back_ctrl_sgnl;
	reg [15:0] memory_ctrl_sgnl;
	reg [15:0] execute_ctrl_sgnl;
	reg [3:0] reg_1_buff;
	reg [3:0] reg_2_buff;
	reg [15:0] sign_extended_buff;
	reg [15:0] instruction_buff;

	// Outputs
	wire [15:0] write_back_ctrl_sgnl_out;
	wire [15:0] memory_ctrl_sgnl_out;
	wire [15:0] execute_ctrl_sgnl_out;
	wire [3:0] reg_1_buff_out;
	wire [3:0] reg_2_buff_out;
	wire [15:0] sign_extended_buff_out;
	wire [15:0] instruction_buff_out;

	// Instantiate the Unit Under Test (UUT)
	id_ex_buff uut (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.halt(halt), 
		.write_back_ctrl_sgnl(write_back_ctrl_sgnl), 
		.memory_ctrl_sgnl(memory_ctrl_sgnl), 
		.execute_ctrl_sgnl(execute_ctrl_sgnl), 
		.reg_1_buff(reg_1_buff), 
		.reg_2_buff(reg_2_buff), 
		.sign_extended_buff(sign_extended_buff), 
		.instruction_buff(instruction_buff), 
		.write_back_ctrl_sgnl_out(write_back_ctrl_sgnl_out), 
		.memory_ctrl_sgnl_out(memory_ctrl_sgnl_out), 
		.execute_ctrl_sgnl_out(execute_ctrl_sgnl_out), 
		.reg_1_buff_out(reg_1_buff_out), 
		.reg_2_buff_out(reg_2_buff_out), 
		.sign_extended_buff_out(sign_extended_buff_out), 
		.instruction_buff_out(instruction_buff_out)
	);

	always begin
	#5; clk= ~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		flush = 0;
		halt = 1;
		write_back_ctrl_sgnl = 0;
		memory_ctrl_sgnl = 0;
		execute_ctrl_sgnl = 0;
		reg_1_buff = 0;
		reg_2_buff = 0;
		sign_extended_buff = 0; 
		instruction_buff = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #10;
		rst =1;
		flush =1;
		write_back_ctrl_sgnl = 16'hABCD;
		memory_ctrl_sgnl = 16'hABCD;
		execute_ctrl_sgnl = 16'hABCD;
		reg_1_buff = 4'hA;
		reg_2_buff = 4'hB;
		sign_extended_buff = 16'h0009;
		instruction_buff = 16'hF121;
		#50
		rst = 0;
		#10
		rst =1;
		flush =1;
		write_back_ctrl_sgnl = 16'hABCD;
		memory_ctrl_sgnl = 16'hABCD;
		execute_ctrl_sgnl = 16'hABCD;
		reg_1_buff = 4'hA;
		reg_2_buff = 4'hB;
		sign_extended_buff = 16'h0009;
		instruction_buff = 16'hF121;
		#50
		flush = 0;
		#10
		rst =1;
		flush =1;
		write_back_ctrl_sgnl = 16'hABCD;
		memory_ctrl_sgnl = 16'hABCD;
		execute_ctrl_sgnl = 16'hABCD;
		reg_1_buff = 4'hA;
		reg_2_buff = 4'hB;
		sign_extended_buff = 16'h0009;
		instruction_buff = 16'hF121;
		
		// Add stimulus here

	end
      
endmodule

