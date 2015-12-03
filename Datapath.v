`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:33 11/28/2015 
// Design Name: 
// Module Name:    Datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Datapath(clk,rst,flush,pc_enable,inst_buffer_out,pc_buffer_out );

input clk,rst,flush,pc_enable,if_id_nop,branch_selector,jmp_result;
input [15:0] pc_carry_in;
output [15:0] inst_buffer_out,pcBuffOut;

wire [15:0] muxA_to_pc,
			pc_to_inst_and_adder,
			adder_to_buff_and_muxA,
			inst_to_buff
			;
wire [15:0] inst_buffer_out,
			pc_buffer_out,
			inst_to_buff;
wire cout;


	pc pc (
		.clk(clk), 
		.rst(rst), 
		.enable(pc_enable), 
		.in(muxA_to_pc), 
		.address(pc_to_inst_and_adder)
	);


	adder pc_adder(
		.cin(pc_carry_in), 
		.a(pc_to_inst_and_adder), 
		.b(2), 
		.cout(cout), 
		.r(adder_to_buff_and_muxA)
	);
	


	instructionMEM instructionMemory(
		.clk(clk), 
		.rst(rst), 
		.pcIn(pc_to_inst_and_adder), 
		.instruction(inst_to_buff)
	);
	
	
	muxA if_id_mux (
		.a(adder_to_buff_and_muxA), 
		.b(jmp_result), 
		.c(muxA_to_pc), 
		.select(branch_selector)
	);
		

	if_df_buffer bufferA (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.pc_buff_in(adder_to_buff_and_muxA), 
		.inst_buff_in(inst_to_buff), 
		.nop_in(if_id_nop), 
		.pc_buff_out(pc_buffer_out), 
		.inst_buff_out(inst_buffer_out)
	);


endmodule
