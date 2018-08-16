module fourbitprocessor(clk, sdram_clock, se1, se2, 
se3, se4);

////clock signal is 50 MHz from main clock
////select pins help differentiate instructions
input clk, sdram_clock, se1, se2, se3, se4;

////processor will have 8 registers, with unique purpose
reg [3:0] accumHI;
reg [3:0] accumLO;
reg [3:0] prog_countHI;
reg [3:0] prog_countLO;
reg [3:0] instruct_point;
reg [3:0] flag_reg;

always @ (posedge clk)
////mux will determine the instruction to follow & load instruction pointer 
case (se1 & se2 & se3 & se4)
	0000:instruct_point = 0000; //load
	0001:instruct_point = 0001; //store
	0010:instruct_point = 0010; //add
	0011:instruct_point = 0011; //add w/ carry
	0100:instruct_point = 0100; //sub
	0101:instruct_point = 0101; //sub w/ borrow
	0110:instruct_point = 0110; //negate
	0111:instruct_point = 0111; //increment
	1000:instruct_point = 1000; //decrement
	1001:instruct_point = 1001; //multiply
	1010:instruct_point = 1010; //divide
	1011:instruct_point = 1011; //AND
	1100:instruct_point = 1100; //OR
	1101:instruct_point = 1101; //XOR
	1110:instruct_point = 1110; //modulus
	1111:instruct_point = 1111; //jump
endcase

////memory registers to initiate read/write
reg [3:0] sdram_readHI;
reg [3:0] sdram_readLO;
reg [3:0] sdram_writeHI;
reg [3:0] sdram_writeLO;

////addressable memory 00 - FF
always @ (posedge sdram_clock)
begin
////memory read
if (instruct_point == 0000) begin
	accumLO <= sdram_readLO;
	accumHI <= sdram_readHI;
////memory write
end else if (instruct_point == 0001) begin
	accumLO <= sdram_writeLO;
	accumHI <= sdram_writeHI;
end
end
endmodule
