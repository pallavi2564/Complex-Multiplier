`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 12:18:06
// Design Name: 
// Module Name: cla64
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


module cla64(a,b,cin,sum,cout);
input [63:0] a,b;
input cin;
output [63:0] sum;
output cout;
wire c1,c2;
 
cla32 cla1(.a(a[31:0]), .b(b[31:0]), .cin(cin), .sum(sum[31:0]), .cout(c1));
cla32 cla2(.a(a[63:32]), .b(b[63:32]), .cin(c1), .sum(sum[63:32]), .cout(c2));
assign cout=c2;
 
endmodule

