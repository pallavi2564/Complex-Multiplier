`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:20:05
// Design Name: 
// Module Name: complex_multiplier
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

module complex_multiplier(
input [31:0]ai,ar,bi,br,
output [63:0]pi,pr
    );
 wire [63:0]s1,s2,s3,s4;
 wire c1,b1;
vedic32 m1(ar,br,s1);
vedic32 m2(ai,bi,s2);
vedic32 m3(ar,bi,s3);
vedic32 m4(ai,br,s4);
csa64 r1(s3,s4,0,pi,c1);
fs64 f1(s1,s2,0,pr,b1);
endmodule
