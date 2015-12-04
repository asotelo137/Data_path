`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:46:55 12/02/2015 
// Design Name: 
// Module Name:    mem_wb_buff 
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
module mem_wb_buff (
	clk,
	rst,
	halt,
	write_back_ctrl_sgnl,
	alu_result_bottom_half,
	memory_data_in,
	inst_buff_in, 
	write_back_ctrl_sgnl_out,
	alu_result_bottom_half_out,
	memory_data_out,
	inst_buff_out
	);
	//inputs to ex_mem buffer
	input clk,rst,halt;
	input [15:0] write_back_ctrl_sgnl,
				 alu_result_bottom_half,
				 memory_data_in,
				 inst_buff_in;
	
	// outputs 
	output [15:0] write_back_ctrl_sgnl_out,
				  alu_result_bottom_half_out,
				  memory_data_out,
	 			  inst_buff_out;
	
	
	//regs for outputs
	reg [15:0]  write_back_ctrl_sgnl_out,
				  alu_result_bottom_half_out,
				  memory_data_out,
	 			  inst_buff_out;
	
	//buffer memory array
	reg [15:0] buffer [7:0];
	// enter always on positve edge of clock 
	// negative edge of reset
	always @( clk, negedge rst)
		begin
			// on low reset, reset the buffer
			if(!rst )
				begin
					
					buffer[0] <= 16'h0000;
					buffer[1] <= 16'h0000;
					buffer[2] <= 16'h0000;
					buffer[3] <= 16'h0000;
					buffer[4] <= 16'h0000;
					buffer[5] <= 16'h0000;
					buffer[6] <= 16'h0000;
					buffer[7] <= 16'h0000;
					
					write_back_ctrl_sgnl_out<= 16'h0000;
				  	alu_result_bottom_half_out<= 16'h0000;
				  	memory_data_out<= 16'h0000;
	 			  	inst_buff_out<= 16'h0000;
				end
			else if(clk)
				begin
					write_back_ctrl_sgnl_out	<= buffer[0];
				  	alu_result_bottom_half_out	<= buffer[1];
				  	memory_data_out				<= buffer[2];
	 			  	inst_buff_out				<= buffer[3];
				end
			else if(halt)
				begin 
					buffer[0] <= write_back_ctrl_sgnl;
					buffer[1] <= alu_result_bottom_half;
					buffer[2] <= memory_data_in;
					buffer[3] <= inst_buff_in;
					
				end
			
		end
		
endmodule
