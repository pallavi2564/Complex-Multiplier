`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:17:20
// Design Name: 
// Module Name: fs16
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

module fs16(a,b,bin,d,bout);
input [15:0]a,b;
input bin;
output [15:0]d;
output bout;
wire [1:0]p;
fs8 v1 (.a(a[7:0]), .b(b[7:0]),.bin(bin),.d(d[7:0]), .bout(p[0]));
fs8 v2 (.a(a[15:8]), .b(b[15:8]),.bin(p[0]),.d(d[15:8]), .bout(p[1]));
assign bout=p[1];
endmodule
