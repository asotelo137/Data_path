module shift_left(input_value, shifted_value);
	// inputs
	input [15:0] input_value;
	//outputs
	output [15:0] shifted_value;
	wire [15:0] shifted_value;
	
	shifted_value = input_value << 1;
	
endmodule