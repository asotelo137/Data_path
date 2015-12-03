module sign_extend(clk,ext_in, extend_out);
	input clk;
	input [7:0] ext_in;
	
	output [15:0] extend_out;
	
	always 
		begin 
			extend_out <= { {8{ext_in[7]}}, extend_out[7:0] }
		end
	end
endmodule