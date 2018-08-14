module led_blinker(clk, led1, led2, led3, led4,
j1, j2, j3, j4, k1, k2, k3, k4, q1, q2, q3, q4);

input clk, j1, j2, j3, j4, k1, k2, k3, k4;
output led1, led2, led3, led4, q1, q2, q3, q4;
wire led1, led2, led3, led4;
reg q1, q2, q3, q4;

assign led1 = q1;
assign led2 = q2 & q1;
assign led3 = q3 & q2 & q1;
assign led4 = q4;

always @(posedge clk)

if (j1 == 0) begin
	q1 <= 0;
end else if (j1 == 1) begin
	q1 <= 0;
end else if (k1 == 0) begin
	q1 <= 1;
end else if (k1 == 1) begin
	q1 <= 1;
end else if (j2 == 0) begin
	q2 <= 0;
end else if (j2 == 1) begin
	q2 <= 0;
end else if (k2 == 0) begin
	q2 <= 1;
end else if (k2 == 1) begin
	q2 <= 1;
end else if (j3 == 0) begin
	q3 <= 0;
end else if (j3 == 1) begin
	q3 <= 0;
end else if (k3 == 0) begin
	q3 <= 1;
end else if (k3 == 1) begin
	q3 <= 1;
end else if (j4 == 0) begin
	q4 <= 0;
end else if (j4 == 1) begin
	q4 <= 0;
end else if (k4 == 0) begin
	q4 <= 1;
end else if (k4 == 1) begin
	q4 <= 1;
end
endmodule
