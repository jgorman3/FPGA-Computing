module clock_sig(input_clk,output_clk);

input input_clk;
output output_clk;
wire first_wire;
wire second_wire;
wire output_clk;

assign first_wire = input_clk;
assign second_wire = ~first_wire;
assign output_clk = ~second_wire;
endmodule
