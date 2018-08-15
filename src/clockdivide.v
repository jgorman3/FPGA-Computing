module clockdivide(clk,rst,clk_out);
input clk,rst;
output clk_out;
reg [15:0] count;

always @(posedge clk or negedge rst)
begin
if(!rst) begin
	count <= 16'd0;
end else if(count == 16'd5000) begin
	count <= 16'd0;
end else
	count <= count+1;
end

assign out_clk = (count <= 16'd25000);

endmodule
