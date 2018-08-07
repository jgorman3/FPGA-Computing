`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: Joe Gorman
// 
// Create Date:    04:33:10 07/04/2018 
// Design Name: 
// Module Name:    adder16bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
	o16, o17, o18, o19, o20, o21, o22,
	o23, o24, o25, o26, o27, o28, o29,
	o30, o31
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
	
	/////32 bit output
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
	output o17;
	output o18;
	output o19;
	output o20;
	output o21;
	output o22;
	output o23;
	output o24;
	output o25;
	output o26;
	output o27;
	output o28;
	output o29;
	output o30;
	output o31;
	
	assign sum1 = a0 ^ b0 ^ c0;
	assign carry1 = ((a0 ^ b0) & c0) | (a0 & b0);
	
	assign sum2 = a1 ^ b1 ^ c1;
	assign carry2 = ((a0 ^ b0) & c0) | (a0 & b0);
	
	assign sum3 = a2 ^ b2 ^ c2;
	assign carry3 = ((a0 ^ b0) & c0) | (a0 & b0);
	
	assign sum4 = a3 ^ b3 ^ c3;
	assign carry4 = ((a0 ^ b0) & c0) | (a0 & b0);

	//unsure of how to implement the carries 2,3,4

endmodule
