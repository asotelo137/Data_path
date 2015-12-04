module exception_handle_unit(instruct,
							overflow,
							exception_flag);
	input [15:0] instruct;
	input overflow;
	
	output exception_flag;
	reg exception_flag;
	
	always (*)
		begin
			case(instruct[15:12])
				4'h F: 
				4'h B:
				4'h 8:
				4'h 5:
				4'h 4:
				4'h 6:
				4'h C:
				4'h 0:
				default: 	begin
								exception_flag = 1;
								$display("An unrecoverable System Error has Occured.");
				end
			endcase
			if(!overflow)
						begin
							exception_flag = 1;
							$display("An unrecoverable System Error has Occured.");
						end
		end
endmodule

		
				
				
				