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
module Datapath(clk,rst,flush,instructionBuffOut,pcBuffOut );

input clk,rst,flush;
output [15:0] instructionBuffOut,pcBuffOut;

wire [15:0] pc_to_inst_and_adder, pc_to_buff_and_muxa,muxA_to_pc,adder_to_buff_and_muxA;
wire [15:0] bufferOutInstruction,pc_buffer_out,inst_to_buff;
wire cout;


	pc pc (
		.clk(clk), 
		.rst(rst), 
		.enable(0), 
		.in(muxA_to_pc), 
		.address(pc_to_inst_and_adder)
	);


	adder pc_adder(
		.cin(0), 
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
	
	
	muxA uut (
		.a(adder_to_buff_and_muxA), 
		.b(0), 
		.c(muxA_to_pc), 
		.select(0)
	);
	
	
	

	if_df_buffer bufferA (
		.clk(clk), 
		.rst(rst), 
		.flush(flush), 
		.pc_buff_in(adder_to_buff_and_muxA), 
		.inst_buff_in(inst_to_buff), 
		.nop_in(1), 
		.pc_buff_out(pcBuffOut), 
		.inst_buff_out(instructionBuffOut)
	);


endmodule
