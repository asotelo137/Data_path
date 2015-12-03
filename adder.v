`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:51 11/28/2015 
// Design Name: 
// Module Name:    adder 
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
module adder(cin, a, b, cout, r);

input cin;
input [15:0] a;
input [15:0] b;


//Outputs
output cout;
output [15:0] r;

//cout gets the carry out from the addition.
assign {cout, r} = a + b + cin;

endmodule
