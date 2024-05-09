`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 17:53:16
// Design Name: 
// Module Name: rca16
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


module rca16(a,b,cin,s,cout);
input [15:0]a,b;
input cin;
output [15:0]s;
output cout;
wire c2;
rca8 r3(a[7:0],b[7:0],cin,s[7:0],c2);
rca8 r4(a[15:8],b[15:8],c2,s[15:8],cout);
endmodule