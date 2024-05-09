`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 23:34:18
// Design Name: 
// Module Name: fs64
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fs64(a,b,bin,d,bout);
input [63:0]a,b;
input bin;
output [63:0]d;
output bout;
wire [1:0]p;
fs32 v1 (.a(a[31:0]), .b(b[31:0]),.bin(bin),.d(d[31:0]), .bout(p[0]));
fs32 v2 (.a(a[63:32]), .b(b[63:32]),.bin(p[0]),.d(d[63:32]), .bout(p[1]));
assign bout=p[1];
endmodule
