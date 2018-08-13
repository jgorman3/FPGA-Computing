module adder16bit
	(
	a0, a1, a2, a3, a4, a5, a6, a7, a8,
	a9, a10, a11, a12, a13, a14, a15,
		
	b0, b1, b2, b3, b4, b5, b6, b7, b8,
	b9, b10, b11, b12, b13, b14, b15,
		
	c0, c1, c2, c3, c4, c5, c6, c7, c8,
	c9, c10, c11, c12, c13, c14, c15,
		
	o0, o1, o2, o3, o4, o5, o6, o7, o8,
	o9, o10, o11, o12, o13, o14, o15,
	o16
	);
	
	//numbers are 16 bit, producing a 32 bit number
	/////number a
	input a0;
	input a1;
	input a2;
	input a3;
	input a4;
	input a5;
	input a6;
	input a7;
	input a8;
	input a9;
	input a10;
	input a11;
	input a12; 
	input a13;
	input a14;
	input a15;
	
	/////number b
	input b0;
	input b1;
	input b2;
	input b3;
	input b4;
	input b5;
	input b6;
	input b7;
	input b8;
	input b9;
	input b10;
	input b11;
	input b12; 
	input b13;
	input b14;
	input b15;
	
	//carry for look-ahead carry
	input c0;
	input c1;
	input c2;
	input c3;
	input c4;
	input c5;
	input c6;
	input c7;
	input c8;
	input c9;
	input c10;
	input c11;
	input c12; 
	input c13;
	input c14;
	input c15;
	
	/////16 bit output
	output o0;
	output o1;
	output o2;
	output o3;
	output o4;
	output o5;
	output o6;
	output o7;
	output o8;
	output o9;
	output o10;
	output o11;
	output o12;
	output o13;
	output o14;
	output o15;
	output o16;
	
	assign o0 = a0 ^ b0 ^ c0;
	assign c1 = ((a0 ^ b0) & c0) | (a0 & b0);
	
	assign o1 = a1 ^ b1 ^ c1;
	assign c2 = ((a1 ^ b1) & c1) | (a1 & b1);
	
	assign o2 = a2 ^ b2 ^ c2;
	assign c3 = ((a2 ^ b2) & c2) | (a2 & b2);
	
	assign o3 = a3 ^ b3 ^ c3;
	assign c4 = ((a3 ^ b3) & c3) | (a3 & b3);
	
	assign o4 = a4 ^ b4 ^ c4;
	assign c5 = ((a4 ^ b4) & c4) | (a4 & b4);
	
	assign o5 = a5 ^ b5 ^ c5;
	assign c6 = ((a5 ^ b5) & c5) | (a5 & b5);
	
	assign o6 = a6 ^ b6 ^ c6;
	assign c7 = ((a6 ^ b6) & c6) | (a6 & b6);
	
	assign o7 = a7 ^ b7 ^ c7;
	assign c8 = ((a7 ^ b7) & c7) | (a7 & b7);
	
	assign o8 = a8 ^ b8 ^ c8;
	assign c9 = ((a8 ^ b8) & c8) | (a8 & b8);
	
	assign o9 = a9 ^ b9 ^ c9;
	assign c10 = ((a9 ^ b9) & c9) | (a9 & b9);
	
	assign c10 = a10 ^ b10 ^ c10;
	assign c11 = ((a10 ^ b10) & c10) | (a10 & b10);
	
	assign c11 = a11 ^ b11 ^ c11;
	assign c12 = ((a11 ^ b11) & c11) | (a11 & b11);

endmodule
