`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 16:49:54
// Design Name: 
// Module Name: vedic2
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


module vedic2(
input [1:0]a,
input [1:0]b,
output[3:0]m);
wire [2:0]w;
wire z;
andgate a1(a[0],b[0],m[0]);
andgate a2(a[0],b[1],w[0]);
andgate a3(a[1],b[0],w[1]);
ha h1(.a(w[0]),.b(w[1]),.sum(m[1]),.carry(z));
andgate a4(a[1],b[1],w[2]);
ha h2(.a(z),.b(w[2]),.sum(m[2]),.carry(m[3]));
endmodule
