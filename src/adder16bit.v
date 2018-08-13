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
	
	//numbers are 16 bit, producing another 16 bit number (also overflow)
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
	
	/////carry for look-ahead carry, either generated or propagated
	input c0;
	output c1;
	output c2;
	output c3;
	output c4;
	output c5;
	output c6;
	output c7;
	output c8;
	output c9;
	output c10;
	output c11;
	output c12; 
	output c13;
	output c14;
	output c15;
	
	//wire all carry outputs
	wire c1;
	wire c2;
	wire c3;
	wire c4;
	wire c5;
	wire c6;
	wire c7;
	wire c8;
	wire c9;
	wire c10;
	wire c11;
	wire c12;
	wire c13;
	wire c14;
	wire c15;
	
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
	
	/////wire all 16 output bits 
	wire o0;
	wire o1;
	wire o2;
	wire o3;
	wire o4;
	wire o5;
	wire o6;
	wire o7;
	wire o8;
	wire o9;
	wire o10;
	wire o11;
	wire o12;
	wire o13;
	wire o14;
	wire o15;
	wire o16;
	
	/////assign the wires with the respective operation
	assign o0 = a0 ^ b0 ^ c0;
	assign c1 = ((a1 ^ b1) & c0) | (a1 & b1);
	
	assign o1 = a1 ^ b1 ^ c1;
	assign c2 = ((a2 ^ b2) & c1) | (a2 & b2);
	
	assign o2 = a2 ^ b2 ^ c2;
	assign c3 = ((a3 ^ b3) & c2) | (a3 & b3);
	
	assign o3 = a3 ^ b3 ^ c3;
	assign c4 = ((a4 ^ b4) & c3) | (a4 & b4);
	
	assign o4 = a4 ^ b4 ^ c4;
	assign c5 = ((a5 ^ b5) & c4) | (a5 & b5);
	
	assign o5 = a5 ^ b5 ^ c5;
	assign c6 = ((a6 ^ b6) & c5) | (a6 & b6);
	
	assign o6 = a6 ^ b6 ^ c6;
	assign c7 = ((a7 ^ b7) & c6) | (a7 & b7);
	
	assign o7 = a7 ^ b7 ^ c7;
	assign c8 = ((a8 ^ b8) & c7) | (a8 & b8);
	
	assign o8 = a8 ^ b8 ^ c8;
	assign c9 = ((a9 ^ b9) & c8) | (a9 & b9);
	
	assign o9 = a9 ^ b9 ^ c9;
	assign c10 = ((a10 ^ b10) & c9) | (a10 & b10);
	
	assign o10 = a10 ^ b10 ^ c10;
	assign c11 = ((a11 ^ b11) & c10) | (a11 & b11);
	
	assign o11 = a11 ^ b11 ^ c11;
	assign c12 = ((a12 ^ b12) & c11) | (a12 & b12);
	
	assign o12 = a12 ^ b12 ^ c12;
	assign c13 = ((a13 ^ b13) & c12) | (a13 & b13);
	
	assign o13 = a13 ^ b13 ^ c13;
	assign c14 = ((a14 ^ b14) & c13) | (a14 & b14);
	
	assign o14 = a14 ^ b14 ^ c14;
	assign c15 = ((a15 ^ b15) & c14) | (a15 & b15);
	
	assign o15 = a15 ^ b15 ^ c15;
	//overflow can only exist when a combo of them is 1
	assign o16 = (a15 & b15) | (b15 & c15) | (c15 & a15)
	
endmodule
