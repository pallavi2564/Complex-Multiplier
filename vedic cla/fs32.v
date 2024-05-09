`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 21:44:44
// Design Name: 
// Module Name: fs32
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


module fs32(a,b,bin,d,bout);
input [31:0]a,b;
input bin;
output [31:0]d;
output bout;
wire [1:0]p;
fs16 v1 (.a(a[15:0]), .b(b[15:0]),.bin(bin),.d(d[15:0]), .bout(p[0]));
fs16 v2 (.a(a[31:16]), .b(b[31:16]),.bin(p[0]),.d(d[31:16]), .bout(p[1]));
assign bout=p[1];
endmodule