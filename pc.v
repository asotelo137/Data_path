`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:55 11/28/2015 
// Design Name: 
// Module Name:    pc 
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

//NON_BLOCKING
module pc(clk, rst, enable, in, address);

input clk;
input rst;
input enable;
input [15:0] in;

//Outputs
//size was 8 bit for address
output reg [15:0] address;
//Output Logic
always @(posedge clk or negedge rst)
//Using negedge of reset, posedge caused problems
begin



	if (!rst) begin
		address <= 0;
	end
//Enable

	else if (!enable) begin
		address <= in;
	end

//do nothing
	else begin
		address <= address;
	end

end

endmodule