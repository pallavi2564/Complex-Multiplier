`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 23:56:37
// Design Name: 
// Module Name: cla8
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


module cla8 (
    input [7:0] a, b,
    input cin,
    output [7:0] sum,
    output cout
);

wire  G, P;
wire cout_1, cout_2;
clah_4 c1 (.a(a[3:0]), .b(b[3:0]),.cin(cin),.s(sum[3:0]), .c(cout_1));
clah_4 c2 (.a(a[7:4]), .b(b[7:4]),.cin(cout_1),.s(sum[7:4]),.c(cout_2));
assign G = a[7] & b[7];
assign P = a[7] | b[7];
assign cout = cout_2 | (G & ~P);

endmodule