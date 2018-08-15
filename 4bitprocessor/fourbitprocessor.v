module fourbitprocessor(clk, se1, se2, se3, se4);

////clock signal is 50 MHz from main clock
////select pins help differentiate instructions
input clk, se1, se2, se3, se4;

////processor will have 8 registers, with unique purpose
reg [3:0] accum1;
reg [3:0] accum2;
reg [3:0] accum3;
reg [3:0] accum4;
reg [3:0] prog_count;
reg [3:0] instruct_point;
reg [3:0] flag_reg;
reg [3:0] interrupt_reg;

always @ (posedge clk)
////mux will determine the instruction to follow & load instruction pointer 
case (se1 & se2 & se3 & se4)
	0000:instruct_point = 0000;
	0001:instruct_point = 0001;
	0010:instruct_point = 0010;
	0011:instruct_point = 0011;
	0100:instruct_point = 0100;
	0101:instruct_point = 0101;
	0110:instruct_point = 0110;
	0111:instruct_point = 0111;
	1000:instruct_point = 1000;
	1001:instruct_point = 1001;
	1010:instruct_point = 1010;
	1011:instruct_point = 1011;
	1100:instruct_point = 1100;
	1101:instruct_point = 1101;
	1110:instruct_point = 1110;
	1111:instruct_point = 1111;
	default: $display("no instruction called");
endcase

endmodule
