`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 23:05:41
// Design Name: 
// Module Name: cla16
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


module cla16(a,b,cin,sum,cout);
input [15:0] a,b;
input cin;
output [15:0] sum;
output cout;
wire c1,c2;
 
cla8 cla1(.a(a[7:0]), .b(b[7:0]), .cin(cin), .sum(sum[7:0]), .cout(c1));
cla8 cla2(.a(a[15:8]), .b(b[15:8]), .cin(c1), .sum(sum[15:8]), .cout(c2));
assign cout=c2;


 
endmodule
