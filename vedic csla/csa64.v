`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:05:47
// Design Name: 
// Module Name: csa64
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


module csa64(input [63:0]a,input [63:0]b,input cin,output [63:0]sum,output cout

    );
wire c;
csa32 c7(a[31:0],b[31:0],cin,sum[31:0],c);
csa32 c8(a[63:32],b[63:32],c,sum[63:32],cout);
endmodule
