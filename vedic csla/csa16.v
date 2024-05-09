`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 16:58:48
// Design Name: 
// Module Name: csa16
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

module csa16(input [15:0]a,input [15:0]b,input cin,output [15:0]sum,output cout

    );
wire c;
csa8 c3(a[7:0],b[7:0],cin,sum[7:0],c);
csa8 c4(a[15:8],b[15:8],c,sum[15:8],cout);
endmodule
