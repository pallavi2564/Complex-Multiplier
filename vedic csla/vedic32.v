`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:14:00
// Design Name: 
// Module Name: vedic32
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

module vedic32(input [31:0]a,input [31:0]b, output [63:0]s  );
        wire [31:0]c,d,f,g,w,k,y;   
        wire ca1,ca2,ca3; 
        wire l[1:0];
        vedic16 v4(a[15:0],b[15:0],w[31:0]);
        vedic16 v5(a[15:0],b[31:16],c[31:0]);
        vedic16 v6(a[31:16],b[15:0],d[31:0]);
        vedic16 v7(a[31:16],b[31:16],f[31:0]);
        csa32 r8(c[31:0],d[31:0],1'b0,g,ca1);
        csa32 r9(g[31:0],{16'b0,w[31:16]},1'b0,k,ca2);
        ha h8(ca1,ca2,l[0],l[1]);
        csa32 r6(f[31:0],{14'b0,l[1],l[0],k[31:16]},1'b0,y,ca3);  
        assign s[15:0] = w[15:0];
        assign s[31:16]=k[15:0];
        assign s[63:32]=y; 
       
endmodule

