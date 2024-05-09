`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 16:42:33
// Design Name: 
// Module Name: csa4
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

module csa4(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:0]l,m;
wire [1:0]c;
rca u0(a[3:0],b[3:0],1'b0,l[3:0],c[0]);
rca u1(a[3:0],b[3:0],1'b1,m[3:0],c[1]);
mux u2(l[0],m[0],cin,s[0]);
mux u3(l[1],m[1],cin,s[1]);
mux u4(l[2],m[2],cin,s[2]);
mux u5(l[3],m[3],cin,s[3]);
mux u6(c[0],c[1],cin,cout);
endmodule
