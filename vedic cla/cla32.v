`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 10:16:12
// Design Name: 
// Module Name: cla32
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
module cla32(a,b,cin,sum,cout);
input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;
wire c1,c2;
 
cla16 cla1(.a(a[15:0]), .b(b[15:0]), .cin(cin), .sum(sum[15:0]), .cout(c1));
cla16 cla2(.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout(c2));
assign cout=c2;


 
endmodule
