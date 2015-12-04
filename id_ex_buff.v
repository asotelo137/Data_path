`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:08 12/01/2015 
// Design Name: 
// Module Name:    ex_mem_buff 
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
module id_ex_buff(
	clk,
	rst,
	flush,
	halt,
	write_back_ctrl_sgnl,
	memory_ctrl_sgnl,
	execute_ctrl_sgnl,
	reg_1_buff,
	reg_2_buff,
	sign_extended_buff,
	instruction_buff,
	write_back_ctrl_sgnl_out,
	memory_ctrl_sgnl_out,
	execute_ctrl_sgnl_out,
	reg_1_buff_out,
	reg_2_buff_out,
	sign_extended_buff_out,
	instruction_buff_out
);

input clk,rst,flush,halt;
input [15:0] write_back_ctrl_sgnl,
			 memory_ctrl_sgnl,
			 execute_ctrl_sgnl,
			 
			 
			 sign_extended_buff,
			 instruction_buff;
input [3:0] reg_1_buff,
			reg_2_buff;
				
output [15:0] write_back_ctrl_sgnl_out,
			  memory_ctrl_sgnl_out,
			  execute_ctrl_sgnl_out,
			  sign_extended_buff_out,
			  instruction_buff_out;
	
output [3:0]reg_1_buff_out,
			  reg_2_buff_out;

reg [15:0] write_back_ctrl_sgnl_out,
		   memory_ctrl_sgnl_out,
		   execute_ctrl_sgnl_out,
		   sign_extended_buff_out,
		   instruction_buff_out;
	
reg [3:0]	reg_1_buff_out,
			reg_2_buff_out;

reg [15:0] buffer[9:0];

	// enter always on positve edge of clock 
	// negative edge of reset
	always @( clk, negedge rst)
		begin
			// on low reset or flush , reset the buffer
			// Halt may not be correct here.
			if(!rst || !flush)
				begin
					
					buffer[0] <= 16'h0000;
					buffer[1] <= 16'h0000;
					buffer[2] <= 16'h0000;
					buffer[3] <= 16'h0000;
					buffer[4] <= 16'h0000;
					buffer[5] <= 16'h0000;
					buffer[6] <= 16'h0000;
					buffer[7] <= 16'h0000;
					buffer[8] <= 16'h0000;
					buffer[9] <= 16'h0000;
					//We have to include the actual outputs otherwise we delay a clk cycle
					write_back_ctrl_sgnl_out <= 16'h0000;
					memory_ctrl_sgnl_out <= 16'h0000;
					execute_ctrl_sgnl_out <= 16'h0000;
					reg_1_buff_out <= 16'h0000;
					reg_2_buff_out <= 16'h0000;
					sign_extended_buff_out <= 16'h0000;
					instruction_buff_out <= 16'h0000;
					
				end
			else if(clk)
				begin
					write_back_ctrl_sgnl_out <= buffer[0];
					memory_ctrl_sgnl_out <= buffer[1];
					execute_ctrl_sgnl_out <= buffer[2];
					reg_1_buff_out <= buffer[3];
					reg_2_buff_out <= buffer[4];
					sign_extended_buff_out <= buffer[5];
					instruction_buff_out <= buffer[6];
				end
			else if(halt)
				begin 
					buffer[0] <= write_back_ctrl_sgnl;
					buffer[1] <= memory_ctrl_sgnl;
					buffer[2] <= execute_ctrl_sgnl;
					buffer[3] <= reg_1_buff;
					buffer[4] <= reg_2_buff;
					buffer[5] <= sign_extended_buff;
					buffer[6] <= instruction_buff;
				end
			
		end
		
endmodule