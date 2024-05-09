`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 22:56:58
// Design Name: 
// Module Name: fs
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


module fs(a,b,c,d,bo

    );
    input a,b,c;
    output d,bo;
    assign d=a^b^c;
    assign bo=(~a&c)^(~a&b)^(b&c);
endmodule
