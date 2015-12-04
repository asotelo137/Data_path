`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:47 12/02/2015 
// Design Name: 
// Module Name:    main_memory 
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
module main_memory(
	clk,
	rst,
	mem_write,
	mem_read,
	address,
	data_in,
	data_out);
	
	input clk,rst,mem_write,mem_read;
	integer mem_location;
	// bytes 15:1 indicates which word, bit 0 = which byte.
	input [15:0] address, data_in;
	
	output [15:0] data_out;
	
	reg [15:0] data_out;
	
	reg [7:0] memory [32767:0];
	
	always@(posedge clk, negedge rst)
		begin
			if(!rst)
				begin
					data_out <= 16'h 0;
					memory[0]<= 8'h CD;
					memory[1]<= 8'h 2B;
					for(mem_location=2;mem_location<65536;mem_location = mem_location+1)begin
						memory[mem_location] <= 8'h 00;
					end
				end
			if(!mem_write & mem_read)
				begin
				 	memory[{address[15:1],address[0]}] <= data_in[7:0];
					memory[{address[15:1],address[0]+1}] <= data_in[15:8];
					
				end
			if(!mem_read & mem_write)
				begin
					data_out[7:0] <= memory[{address[15:1],address[0]}];
					data_out[15:8] <= memory[{address[15:1],address[0]+1}];
				end
		end 
endmodule

