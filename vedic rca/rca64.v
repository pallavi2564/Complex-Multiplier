`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 23:24:48
// Design Name: 
// Module Name: rca64
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

module rca64(a,b,cin,s,cout);
input [63:0]a,b;
input cin;
output [63:0]s;
output cout;
wire c2;
rca32 r7(a[31:0],b[31:0],cin,s[31:0],c2);
rca32 r8(a[63:32],b[63:32],c2,s[63:32],cout);
endmodule
