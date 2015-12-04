module exception_handle_unit(instruct,
							overflow,
							exception_flag);
	input [15:0] instruct;
	input overflow;
	
	output exception_flag;
	
	always (*)
		begin
			