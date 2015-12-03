module main_memory(
	clk,
	rst,
	mem_write,
	mem_read,
	address,
	data_in,
	data_out);
	
	input clk,rst,mem_write,mem_read;
	
	input [15:0] address, data_in;
	
	output [15:0] data_out;
	
	reg [15:0] data_out;
	
	reg [7:0] memory [65535:0];
	
	always(posedge clk, negedge rst)
		begin
			if(!rst)
				begin
					memory[0]<= 8'h CD;
					memory[1]<= 8'h 2B;
					for(i=2;i<65536;i = i+1)begin
						memory[i] <= 8'h 00;
					end
				end
			if(!mem_write & mem_read)
				begin
					memory[address[7:0]] <= data_in[7:0];
					memory[address[15:8]] <= data_in[15:8];
					
				end
			if(!mem_read & mem_write)
				begin
					data_out[7:0] <= memory[address[7:0]];
					data_out[15:8] <= memory[address[15:8]];
				end
		end
endmodule

