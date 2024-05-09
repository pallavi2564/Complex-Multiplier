`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 16:48:08
// Design Name: 
// Module Name: fa
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


module fa(a,b,cin,sout,cout);
  output sout,cout;
  input a,b,cin;
  assign sout=(a^b^cin);
  assign cout=((a&b)|(a&cin)|(b&cin));
endmodule
