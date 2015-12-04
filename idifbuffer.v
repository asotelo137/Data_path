`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:45 12/01/2015 
// Design Name: 
// Module Name:    if_df_buff 
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
module if_df_buffer (clk,rst,flush,pc_buff_in,inst_buff_in,nop_in, pc_buff_out,inst_buff_out);
	//inputs to if_id buffer
	input clk,rst,flush;
	input nop_in;
	input [15:0] pc_buff_in;
	input [15:0] inst_buff_in;
	
	// outputs 
	output [15:0] pc_buff_out;
	output [15:0] inst_buff_out;
	
	//regs for outputs
	reg [15:0] pc_buff_out;
	reg [15:0] inst_buff_out;
	
	//buffer memory array
	reg [15:0] buffer [7:0];
	// enter always on positve edge of clock 
	// negative edge of reset
	always @( clk, negedge rst)
		begin
			// on low reset or flush , reset the buffer
			if(!rst || !flush||!nop_in)
				begin
					pc_buff_out <=8'h00;
					inst_buff_out <= 16'h0000;
					
					buffer[0] <= 16'h0000;
					buffer[1] <= 16'h0000;
					buffer[2] <= 16'h0000;
					buffer[3] <= 16'h0000;
					buffer[4] <= 16'h0000;
					buffer[5] <= 16'h0000;
					buffer[6] <= 16'h0000;
					buffer[7] <= 16'h0000;
				end
			else if(clk)
				begin
					pc_buff_out <= buffer[0];
					inst_buff_out <= buffer[1];
					
				end
			else 
				begin 
					buffer[0] <= pc_buff_in;
					buffer[1] <= inst_buff_in;
				end
			
		end
		
endmodule

	