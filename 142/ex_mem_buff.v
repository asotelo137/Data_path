module ex_mem_buffer (
	clk,
	rst,
	halt,
	write_back_ctrl_sgnl,
	memory_ctrl_sgnl,
	alu_result_top_half,
	alu_result_bottom_half,
	sign_ext_buff_in
	inst_buff_in, 
	write_back_ctrl_sgnl_out,
	memory_ctrl_sgnl_out,
	alu_result_top_half_out,
	alu_result_bottom_half_out,
	sign_ext_buff_out,
	inst_buff_out
	);
	//inputs to ex_mem buffer
	input clk,rst,halt;
	input [15:0] write_back_ctrl_sgnl,
				 memory_ctrl_sgnl,
				 alu_result_top_half,
				 alu_result_bottom_half,
				 sign_ext_buff_in,
				 inst_buff_in;
	
	// outputs 
	output [15:0] write_back_ctrl_sgnl_out,
				  memory_ctrl_sgnl_out,
				  alu_result_top_half_out,
				  alu_result_bottom_half_out,
				  sign_ext_buff_out,
	 			  inst_buff_out;
	
	
	//regs for outputs
	reg [15:0]  write_back_ctrl_sgnl_out,
				  memory_ctrl_sgnl_out,
				  alu_result_top_half_out,
				  alu_result_bottom_half_out,
				  sign_ext_buff_out,
	 			  inst_buff_out;
	
	//buffer memory array
	reg [15:0] buffer [7:0];
	// enter always on positve edge of clock 
	// negative edge of reset
	always @( clk, negedge rst)
		begin
			// on low reset, reset the buffer
			if(!rst || !halt)
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
					memory_ctrl_sgnl_out<= 16'h0000;
				  	alu_result_top_half_out<= 16'h0000;
				  	alu_result_bottom_half_out<= 16'h0000;
				  	sign_ext_buff_out<= 16'h0000;
	 			  	inst_buff_out<= 16'h0000;
				end
			else if(clk)
				begin
					write_back_ctrl_sgnl_out	<= buffer[0];
					memory_ctrl_sgnl_out		<= buffer[1];
				  	alu_result_top_half_out		<= buffer[2];
				  	alu_result_bottom_half_out	<= buffer[3];
				  	sign_ext_buff_out			<= buffer[4];
	 			  	inst_buff_out				<= buffer[5];
				end
			else 
				begin 
					buffer[0] <= write_back_ctrl_sgnl;
					buffer[1] <= memory_ctrl_sgnl;
					buffer[2] <= alu_result_top_half;
					buffer[3] <= alu_result_bottom_half;
					buffer[4] <= sign_ext_buff_in;
					buffer[5] <= inst_buff_in;
					
				end
			
		end
		
endmodule

	