`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 17:21:24
// Design Name: 
// Module Name: complex_multiplier_tb
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

module complex_multiplier_tb;
    reg[31:0]ai,ar,bi,br;
    wire[63:0]pi,pr;
  
complex_multiplier uut(.ai(ai),.ar(ar),.bi(bi),.br(br),.pi(pi),.pr(pr));
initial begin
  
    ai=0;ar=0;bi=0;br=0;
    
     #10 ai=32'd456789999;ar=32'd67483783;bi=32'd878976768;br=32'd568465845;
      #10 ai=32'd46789999;ar=32'd67422783;bi=32'd878976768;br=32'd84658545;
       #10 ai=32'd456247999;ar=32'd1253783;bi=32'd8716768;br=32'd56158545;
        #10 ai=32'd89999;ar=32'd6754783;bi=32'd6768;br=32'd562658545;
         #10 ai=32'd99;ar=32'd83;bi=32'd68;br=32'd45;
end

initial begin
$monitor("time:%g ai=%d ar=%d bi=%d br=%d pi=%d pr=%d",$time,ai,ar,bi,br,pi,pr);
#70 $finish;
end

endmodule
