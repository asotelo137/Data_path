module register_memory(clk,
	rst,
	read_write_enable,
	register_1,
	register_2,
	write_reg,
	write_data,
	read_reg_1,
	read_reg_2,
	write_reg_15,
	read_reg_15);
	input clk,rst,read_write_enable;
	input [3:0] register_1,register_2,write_reg;
	input [15:0] write_data,write_reg_15;
	output [15:0] read_reg_1,read_reg_2,read_reg_15;
	
	reg [15:0] read_reg_1,read_reg_2,read_reg_15;
	
	reg [15:0] register_memory [15:0];
	
	always @(clk,negedge rst)
		begin	  
			if(!rst)
				begin
					register_memory[0] <= 16'h0F00 ;
					register_memory[1] <= 16'h0050 ;
					register_memory[2] <= 16'hFF0F ;
					register_memory[3] <= 16'hF0FF ;
					register_memory[4] <= 16'h0040 ;
					register_memory[5] <= 16'h0024 ;
					register_memory[6] <= 16'h00FF ;
					register_memory[7] <= 16'hAAAA ;
					register_memory[8] <= 16'H0000 ;
					register_memory[9] <= 16'h0000 ;
					register_memory[10] <= 16'h0000 ;
					register_memory[11] <= 16'hFFFF ;
					register_memory[12] <= 16'h0002 ;
					register_memory[13] <= 16'h0000 ;
					register_memory[14] <= 16'h0000 ;
					register_memory[15] <= 16'h0000 ;
				end
			// if high activate the read 
			else if(read_write_enable)
				begin
					read_reg_1 <= register_memory[register_1];
					read_reg_2 <= register_memory[register_2];
					read_reg_15<= register_memory[15];
				end
			else if(!read_write_enable)
				begin
					register_memory[write_reg] <= write_data;
					register_memory[15] <= write_reg_15;
				end
					
		end
	
endmodule