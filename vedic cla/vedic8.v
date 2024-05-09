`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 19:32:05
// Design Name: 
// Module Name: vedic8
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
///////////////////////////////////////////////////

module vedic8(input [7:0]a,input [7:0]b, output [15:0]s

    );
  wire [7:0]c,d,f,g,w,k,y;   
        wire ca1,ca2,ca3; 
        wire l[1:0];
        vedic4 v0(a[3:0],b[3:0],w[7:0]);
        vedic4 v1(a[3:0],b[7:4],c[7:0]);
        vedic4 v2(a[7:4],b[3:0],d[7:0]);
        vedic4 v3(a[7:4],b[7:4],f[7:0]);
        cla8 r4(c[7:0],d[7:0],1'b0,g,ca1);
        cla8 r5(g[7:0],{4'b0,w[7:4]},1'b0,k,ca2);
        ha h8(ca1,ca2,l[0],l[1]);
        cla8 r6(f[7:0],{2'b0,l[1],l[0],k[7:4]},1'b0,y,ca3);  
        assign s[3:0] = w[3:0];
        assign s[7:4]=k[3:0];
        assign s[15:8]=y; 
       
endmodule