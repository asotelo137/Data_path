module hazard_detect(
	instruction_ID,
	instruction_EX,
	halt,
	pc_enable);
	
	input [15:0] instruction_ID,
				 instruction_EX,
				 memory_ctrl_sgnls;
		
	output pc_enable,halt;
	
	reg pc_enable,halt;
	always@(*)
	begin
		if((instruction_EX[15:12] == 4'h23) &&
			((instruction_EX[11:8] == instruction_ID[11:8])
			||(instruction_EX[11:8] == instruction_ID[7:4])))
			begin
				halt <= 0;
				pc_enable <= 1;
			end
	end
endmodule