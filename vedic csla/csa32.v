`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:02:06
// Design Name: 
// Module Name: csa32
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

module csa32(input [31:0]a,input [31:0]b,input cin,output [31:0]sum,output cout

    );
wire c;
csa16 c5(a[15:0],b[15:0],cin,sum[15:0],c);
csa16 c6(a[31:16],b[31:16],c,sum[31:16],cout);
endmodule
