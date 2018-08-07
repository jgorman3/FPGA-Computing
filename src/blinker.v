`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Student at LMU / Hardware Engineering Intern at CalAmp-LoJack Corp
// Engineer: Joe Gorman
// 
// Create Date:    04:02:30 06/16/2018 
// Design Name: 
// Module Name:    blinker 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: mojo_top.v
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module blinker(
    input clk,
    input rst,
    output blink
  );
 
  reg [24:0] counter_d, counter_q;
 
  assign blink = counter_q[24];
 
  always @(counter_q) begin
    counter_d = counter_q + 1'b1;
  end
 
  always @(posedge clk) begin
    if (rst) begin
      counter_q <= 25'b0;
    end else begin
      counter_q <= counter_d;
    end
  end
 
endmodule
