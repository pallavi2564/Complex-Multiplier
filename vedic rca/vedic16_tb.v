`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 22:16:40
// Design Name: 
// Module Name: vedic16_tb
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


module vedic16_tb;

reg [15:0] a,b;

wire [31:0] s;

 
  vedic16 uut(.a(a), .b(b),.s(s));
 
initial begin
  a=0; b=0;
  #10 a=16'b0000111111111100; b=16'b1111000000000011; 
  
end
 
initial begin
 $monitor( "time:%g a=%b s=%b",$time,a,b,s);
  #70 $finish;
  end
endmodule
