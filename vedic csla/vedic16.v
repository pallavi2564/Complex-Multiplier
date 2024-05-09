`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:13:11
// Design Name: 
// Module Name: vedic16
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

module vedic16(input [15:0]a,input [15:0]b, output [31:0]s  );
        wire [15:0]c,d,f,g,w,k,y;   
        wire ca1,ca2,ca3; 
        wire l[1:0];
        vedic8 v4(a[7:0],b[7:0],w[15:0]);
        vedic8 v5(a[7:0],b[15:8],c[15:0]);
        vedic8 v6(a[15:8],b[7:0],d[15:0]);
        vedic8 v7(a[15:8],b[15:8],f[15:0]);
        csa16 r8(c[15:0],d[15:0],1'b0,g,ca1);
        csa16 r9(g[15:0],{8'b0,w[15:8]},1'b0,k,ca2);
        ha h8(ca1,ca2,l[0],l[1]);
        csa16 r6(f[15:0],{6'b0,l[1],l[0],k[15:8]},1'b0,y,ca3);  
        assign s[7:0] = w[7:0];
        assign s[15:8]=k[7:0];
        assign s[31:16]=y; 
       
endmodule
