`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:42 12/01/2015
// Design Name:   alu
// Module Name:   C:/Users/gonzalje/Desktop/CPE142/aluTB.v
// Project Name:  CPE142
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module aluTB;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] opcode;

	// Outputs
	wire [31:0] result;
	wire [15:0] remainder;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.result(result), 
		.opcode(opcode), 
		.remainder(remainder));

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		opcode = 9;

		// Wait 100 ns for global reset to finish
		#100;
		//testing rotate
       #10; a=24576;b=1;
		 #10; a=24576;b=2;
		 #10; a=24576;b=3;
		 #10; a=24576;b=4;
		 
		 
		 	  #100;
		 	//testing rotate
       #10; a=24576;b=1;opcode =11;
		 #10; a=24576;b=2;opcode =11;
		 #10; a=24576;b=3;opcode =11;
		 #10; a=24576;b=4;opcode =11;
		 
		 
		 
		 //mul
		 #10; a =2; b=2; opcode = 4;
		  #10; a =3; b=8; opcode = 4;
		  #10; a =0; b=2; opcode = 4;
		  #10; a =3; b=0; opcode = 4;
		  #10; a =1; b=50; opcode = 4;
		  #10; a =3; b=8; opcode = 4;
		  
		  #100;
		  //divide
		   #10; a =2; b=2; opcode = 5;
		  #10; a =3; b=8; opcode = 5;
		  #10; a =0; b=2; opcode = 5;
		  #10; a =10; b=2; opcode = 5;
		  #10; a =20; b=5; opcode = 5;
		  #10; a =0; b=8; opcode = 5;
		  
		  
		    #100;
		  //addition
		   #10; a =2; b=2; opcode = 0;
		  #10; a =3; b=8; opcode = 0;
		  #10; a =0; b=2; opcode = 0;
		  #10; a =10; b=2; opcode = 0;
		  #10; a =20; b=5; opcode = 0;
		  #10; a =0; b=8; opcode = 0;
		  
		  
		    #100;
		  //sub
		   #10; a =2; b=2; opcode = 1;
		  #10; a =3; b=8; opcode = 1;
		  #10; a =0; b=2; opcode = 1;
		  #10; a =10; b=2; opcode = 1;
		  #10; a =-6500; b=6500; opcode = 1;
		  #10; a =10000; b=16383; opcode = 1;
		#10; a =-20000; b=16383; opcode = 1;		  
		    #100;
		  //bitwaise and
		   #10; a =2; b=2; opcode = 2;
		  #10; a =3; b=8; opcode = 2;
		  #10; a =0; b=2; opcode = 2;
		  #10; a =10; b=2; opcode = 2;
		  #10; a =20; b=5; opcode = 2;
		  #10; a =0; b=8; opcode = 2;
		  
		  
		    #100;
		  //bitwise or
		   #10; a =2; b=2; opcode = 3;
		  #10; a =3; b=8; opcode = 3;
		  #10; a =0; b=2; opcode = 3;
		  #10; a =10; b=2; opcode = 3;
		  #10; a =20; b=5; opcode = 3;
		  #10; a =0; b=8; opcode = 3;
		  
	
		 
		  
		 
		 //testing mul
		 
		// Add stimulus here

	end
      
endmodule

