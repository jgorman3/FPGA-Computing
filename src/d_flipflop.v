module d_flipflop ( d, clk, q, q_bar);
input d ,clk;
output q, q_bar;
wire d ,clk;
reg q, q_bar;
   	 
always @ (posedge clk)
 begin
   q <= d;
   q_bar <=  ! d;
 end
 
endmodule