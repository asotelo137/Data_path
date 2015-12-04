`timescale 1ns / 1ps

module controlUnit(instruction,hazard_detected,jump,halt,branch,compare_type,flush,opcode);
	input [15:0] instruction;
	input hazard_detected;
	
	output jump,halt,branch,flush;
	output [3:0] opcode,sign_extend,compare_type;
	output [1:0] mem_read_write;
	reg [3:0] function_code,op1,op2,destination,offset;
	
	//sign extend has multiple types of sign extensions
		// se =0 se on op1
		// se =1 se on op2
		// se =2 se on imm
		//branch compare types for comparator
		//  =0 if op1 > 
		// =1 if op1<
		//	=2 if ==
		//
	// determining operands , may delete later, this is extra for or design
always@(*)
	
	begin
	//look for type of instruction.
	if(!hazard_detected)
		begin
		//do hazard stuff //might take out after tb
		end
	
	else if( hazard_deteced )	
		begin
	
	//types of instructions
		case (instruction[15:12])
			
			//alu type instruction
				15 : begin
						op1 = instruction[11:8]; 
						op2 = instruction[7:4]; 
						function_code = instruction[3:0];
						destination = op1;
						offset = 0;
						sign_extend = 1;
						mem_write = 1;
						mem_read =1;
						end
				//load instruction
				11 : begin
						op1 = instruction[11:8]; 
						op2 = instruction[7:4]; 
						function_code = 0;
						destination = op1;
						offset = instruction[3:0];
						sign_extend = 2;
						mem_write = 1;
						mem_read =0;
						end
				//store instuction
				8 : begin
						op1 = instruction[11:8]; 
						op2 = instruction[7:4]; 
						function_code = 0;
						destination = op1;
						offset = instruction[3:0];
						sign_extend = 2;
						mem_write = 0;
						mem_read = 1;
						end	
				//branch on less than
				5 : begin
						op1 = instruction[11:8]; 
						op2 = 0; 
						function_code = 0;
						destination = 0;//no destination
						offset = instruction[7:0];
						sign_extend = 1;
						compare_type = 1;
						flush = 0;
						mem_write = 1;
						mem_read =1;
						end	
					//branhc on greater than	
				4 : begin
						op1 = instruction[11:8]; 
						op2 = 0; 
						function_code = 0; //no destination
						destination = 0;
						offset = instruction[7:0];
						sign_extend = 1;
						compare_type = 0;
						flush = 0;
						mem_write = 1;
						mem_read =1;
						end
				//branch on equal
				6 : begin
						op1 = instruction[11:8]; 
						op2 = 0; 
						function_code = 0; //no destination
						destination = 0;
						offset = instruction[7:0];
						sign_extend = 1;
						compare_type = 0;
						halt = 1;
						jump = 0;
						branch = 1;
						compare_type = 3;
						flush = 0;
						mem_write = 1;
						mem_read =1;
						end	
				//jump			
				12 : begin
						op1 = instruction[11:8]; 
						op2 = 0; 
						function_code = 0; //no destination
						destination = 0;
						offset = instruction[7:0];
						sign_extend = 0; //to op1
						halt = 1;
						jump = 0;
						branch = 1;
						flush = 0;
						mem_write = 1;
						mem_read =1;
						
						end							
				//halt
				0: begin
						op1 = 0; 
						op2 = 0; 
						function_code = 0; //no destination
						destination = 0;
						offset = 0;
						sign_extend = 0; //to op1
						halt = 0;
						jump = 1;
						branch = 1;
						mem_write = 1;
						mem_read =1;
						
						end
					

				default : 
							//do a halt
							halt =1;
							//rest of signals = dont care
			endcase
	
	
	
		end
	end
	

	
endmodule
