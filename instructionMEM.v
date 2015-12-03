`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:09 11/29/2015 
// Design Name: 
// Module Name:    instructionMEM 
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
module instructionMEM(clk, rst, pcIn, instruction);
input clk, rst;
input [15:0] pcIn;
output [15:0] instruction;
reg [15:0] instruction;


//memory we will be using
reg [15:0] memory [56:0]; 
//we only need these amount of location , size.
//jpos edge clk to do work
//negedge of rst to reset memory to initial instruction.

always@(*)

	begin
		if(!rst)
			begin
				//registers are r0,r1,r2....
				memory[0] <= 16'hf120; // add r1,r2
				memory[2] <= 16'hf121; 	// sub r1,r2
				memory[4] <= 16'hf343; // or r3,r4
				memory[6] <= 16'hf322; // and r3,r2
				memory[8] <= 16'hf564; //mul r5,r6
				memory[10] <= 16'hf120; // div r1,r5	
				memory[12] <= 16'hfff1; //sub r15,r15
				memory[14] <= 16'hf437; //sll r4,3
				memory[16] <= 16'hf428; //slr r4,2
				memory[18] <= 16'hf63B; //ror r6, 3
				memory[20] <= 16'hf62B; //ror r6, 2
				memory[22] <= 16'h6740; //beq r7, 4 ,*type c no opcode*
				memory[24] <= 16'hfB10; // ADD R11, R1
				memory[26] <= 16'h5750; //	BLT R7, 5
				memory[28] <= 16'hfB20; // // ADD r11, r2
				memory[30] <= 16'h4720; // BGT R7, 2
				memory[32] <= 16'hf110; // ADD R1, R1
				memory[34] <= 16'hf110; //	 ADD R1, R1
				memory[36] <= 16'hB890; // LW R8, 0(R9) //TYPE B
				memory[38] <= 16'hf880; // ADD R8, R8
				memory[40] <= 16'h8892; // SW R8, 2 (R9)
				memory[42] <= 16'hB890; //	LW R10, 2 (R9)
				memory[44] <= 16'hfCC0; // ADD R12, R12
				memory[46] <= 16'hfDD1; // SUB R13, R13
				memory[48] <= 16'hfCD0; //   ADD R12, R13
				memory[50] <= 16'hEFFF;  //     EFFF
				
				
				//fill in rest with 0
				memory[1] <= 16'b000;
				memory[3] <= 16'b000;
				memory[5] <= 16'b000;
				memory[7] <= 16'b000;
				memory[9] <= 16'b000;
				memory[11] <= 16'b000;
				memory[13] <= 16'b000;
				memory[15] <= 16'b000;
				memory[17] <= 16'b000;
				memory[19] <= 16'b000;
				memory[21] <= 16'b000;
				memory[23] <= 16'b000;
				memory[25] <= 16'b000;
				memory[27] <= 16'b000;
				memory[29] <= 16'b000;
				memory[31] <= 16'b000;
				memory[33] <= 16'b000;
				memory[35] <= 16'b000;
				memory[37] <= 16'b000;
				memory[39] <= 16'b000;
				memory[41] <= 16'b000;
				memory[43] <= 16'b000;
				memory[45] <= 16'b000;
				memory[47] <= 16'b000;
				memory[49] <= 16'b000;
				memory[47] <= 16'b000;
				memory[49] <= 16'b000;
				memory[51] <= 16'b000;
				memory[53] <= 16'b000;
				memory[55] <= 16'b000;
				end
				//we never write to our instruction memory so a clk is not really essential
			else if(clk)
				begin
					 instruction <= memory[pcIn];
					end 	
		end
					
endmodule
