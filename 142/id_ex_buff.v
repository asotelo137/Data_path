module id_ex_buff(clk,rst,flush,halt,write_back_ctrl_sgnl,
	memory_ctrl_sgnl,execute_ctrl_sgnl,reg_1_buff,
	reg_2_buff,sign_extended_buff,instruction_buff,write_back_ctrl_sgnl_out,
	memory_ctrl_sgnl_out,execute_ctrl_sgnl_out,reg_1_buff_out,
	reg_2_buff_out,sign_extended_buff_out,instruction_buff_out
);

input clk,rst,flush,halt;
input [15:0] write_back_ctrl_sgnl,memory_ctrl_sgnl,execute_ctrl_sgnl,
				reg_1_buff,reg_2_buff,sign_extended_buff,instruction_buff;
				
output [15:0] write_back_ctrl_sgnl_out,memory_ctrl_sgnl_out,execute_ctrl_sgnl_out,
				reg_1_buff_out,reg_2_buff_out,sign_extended_buff_out,instruction_buff_out;

reg [15:0] write_back_ctrl_sgnl_out,memory_ctrl_sgnl_out,execute_ctrl_sgnl_out,
				reg_1_buff_out,reg_2_buff_out,sign_extended_buff_out,instruction_buff_out;

reg [15:0] buffer[15:0]

	// enter always on positve edge of clock 
	// negative edge of reset
	always @( clk, negedge rst)
		begin
			// on low reset or flush , reset the buffer
			if(!rst || !flush||!nop_in)
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
					buffer[10] <= 16'h0000;
					buffer[11] <= 16'h0000;
					buffer[12] <= 16'h0000;
					buffer[13] <= 16'h0000;
					buffer[14] <= 16'h0000;
					buffer[15] <= 16'h0000;
				end
			else if(clk)
				begin
					pc_buff_out <= buffer[0];
					inst_buff_out <= buffer[1];
					nop_out <= nop_in;
				end
			else 
				begin 
					buffer[0] <= pc_buff_in;
					buffer[1] <= inst_buff_in;
				end
			
		end