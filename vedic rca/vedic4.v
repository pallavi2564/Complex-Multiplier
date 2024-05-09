`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 16:44:36
// Design Name: 
// Module Name: vedic4
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


module vedic4(a,b,s);
    input [3:0] a,b;
    output [7:0] s;
	 wire [3:0]c,d,f,g,w,z,k,m,y;   
	 wire ca1,ca2,ca3;
	 wire [1:0]l; 
	 assign z={2'b00,w[3:2]};
	 assign s={y,k[1:0],w[1:0]}; 
	 assign m={l[1],l[0],k[3:2]};
	 vedic2 x0(a[1:0],b[1:0],w[3:0]);
	 vedic2 x1(a[1:0],b[3:2],c[3:0]);
     vedic2 x2(a[3:2],b[1:0],d[3:0]);
	 vedic2 x3(a[3:2],b[3:2],f[3:0]);
	 rca x4(c[3:0],d[3:0],1'b0,g,ca1);
	 rca x5(g[3:0],z[3:0],1'b0,k,ca2);
	 ha h0(ca1,ca2,l[0],l[1]);
	 rca x6(f[3:0],m[3:0],1'b0,y,ca3);    
	 
endmodule