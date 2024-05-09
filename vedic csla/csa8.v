`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 16:49:31
// Design Name: 
// Module Name: csa8
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


module csa8(input [7:0]a,input [7:0]b,input cin,output [7:0]sum,output cout

    );
wire c;
csa4 c1(a[3:0],b[3:0],cin,sum[3:0],c);
csa4 c2(a[7:4],b[7:4],c,sum[7:4],cout);
endmodule
