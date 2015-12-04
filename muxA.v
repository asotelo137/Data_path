`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:21 11/29/2015 
// Design Name: 
// Module Name:    muxA 
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
module muxA(a,b,c,select );

input select;
input [15:0]a,b;
output reg [15:0]c;

always @(*)
	begin
	
	if(select == 0)
		begin	
			c =a;
		end
	else if(select == 1)
		begin
			c = b;
		end
	else 
		begin
			c = 0;
		end
	
end
endmodule