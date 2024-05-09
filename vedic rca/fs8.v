`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 22:58:32
// Design Name: 
// Module Name: fs8
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


module fs8(a,b,bin,d,bout);
input [7:0]a,b;
input bin;
output [7:0]d;
output bout;
wire [1:0]p;
fs4 v1 (.a(a[3:0]), .b(b[3:0]),.bin(bin),.d(d[3:0]), .bout(p[0]));
fs4 v2 (.a(a[7:4]), .b(b[7:4]),.bin(p[0]),.d(d[7:4]), .bout(p[1]));
assign bout=p[1];
endmodule
