////implementing 8 input multiplexer, 3 select inputs
module multiplexer(cs1, in1, in2, in3, in4, in5, in6, in7, in8,
	se1, se2, se3, out);
	
////inputs and selects
input cs1, in1, in2, in3, in4, in5, in6, in7, in8, se1, se2, se3;
////multiplexed output
output out;
////and gates and output wires
wire out, d0, d1, d2, d3, d4, d5, d6, d7;

assign d0 = (~se1) & (~se2) & (~se3) & (in1 & cs1);
assign d1 = (~se1) & (~se2) & (se3) & (in2 & cs1);
assign d2 = (~se1) & (se2) & (~se3) & (in3 & cs1);
assign d3 = (~se1) & (se2) & (se3) & (in4 & cs1);
assign d4 = (se1) & (~se2) & (~se3) & (in5 & cs1);
assign d5 = (se1) & (~se2) & (se3) & (in6 & cs1);
assign d6 = (se1) & (se2) & (~se3) & (in7 & cs1);
assign d7 = (se1) & (se2) & (se3) & (in8 & cs1);
assign out = d0 | d1 | d2 | d3 | d4 | d5 | d6 | d7;

endmodule
