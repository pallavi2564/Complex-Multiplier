`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 19:17:19
// Design Name: 
// Module Name: rca32
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


module rca32(a,b,cin,s,cout);
input [31:0]a,b;
input cin;
output [31:0]s;
output cout;
wire c2;
rca16 r5(a[15:0],b[15:0],cin,s[15:0],c2);
rca16 r6(a[31:16],b[31:16],c2,s[31:16],cout);
endmodule
