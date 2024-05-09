`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 16:57:30
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
module fa(a,b,cin,s,c

    );
    input a,b,cin;
    output s,c;
    assign s=a^b^cin;
    assign c=(a&b)|(b&cin)|(cin&a);
    
endmodule

