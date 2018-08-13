/////4 to 16 decoder implemented on altera chip
module decoder(
	in1, in2, in3, in4,
	out1, out2, out3, out4,
	out5, out6, out7, out8,
	out9, out10, out11, out12,
	out13, out14, out15, out16
);

/////in1 is MSB and in4 is LSB
input in1, in2, in3, in4;

/////out1 is MSB and out16 is LSB
output out1, out2, out3, out4,
	out5, out6, out7, out8,
	out9, out10, out11, out12,
	out13, out14, out15, out16;
	
/////wire all outputs before assignment
wire out1, out2, out3, out4,
	out5, out6, out7, out8,
	out9, out10, out11, out12,
	out13, out14, out15, out16;

/////assign all of the outputs to decoder logic
assign out1 = (~in1) & (~in2) & (~in3) & (~in4);
assign out2 = (~in1) & (~in2) & (~in3) & (in4);
assign out3 = (~in1) & (~in2) & (in3) & (~in4);
assign out4 = (~in1) & (~in2) & (in3) & (in4);
assign out5 = (~in1) & (in2) & (~in3) & (~in4);
assign out6 = (~in1) & (in2) & (~in3) & (in4);
assign out7 = (~in1) & (in2) & (in3) & (~in4);
assign out8 = (~in1) & (in2) & (in3) & (in4);
assign out9 = (in1) & (~in2) & (~in3) & (~in4);
assign out10 = (in1) & (~in2) & (~in3) & (in4);
assign out11 = (in1) & (~in2) & (in3) & (~in4);
assign out12 = (in1) & (~in2) & (in3) & (in4);
assign out13 = (in1) & (in2) & (~in3) & (~in4);
assign out14 = (in1) & (in2) & (~in3) & (in4);
assign out15 = (in1) & (in2) & (in3) & (~in4);
assign out16 = (in1) & (in2) & (in3) & (in4);

endmodule
