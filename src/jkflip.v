module jkflip(j, k, clk, q, q_next);

input j, k, clk;
output q, q_next;
reg q, q_next;

always @ (posedge clk)
if (j == 0) begin
	q <= 0 & q_next <= 0;
end else if (j == 1) begin
	q <= 0 & q_next <= 1;
end else if (k == 0) begin
	q <= 1 & q_next <= 0;
end else if (k == 1) begin
	q <= 1 & q_next <= 1;
end
endmodule
