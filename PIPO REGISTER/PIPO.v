`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2023 02:25:59
// Design Name: 
// Module Name: PIPO
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
module D(D,CLK,RST,Q);
input D,CLK,RST;
output reg Q;
always@(posedge CLK or posedge RST)
begin
if(RST==1)
Q<=0;

else 
Q<=D;
end
endmodule

module PIPO(OUT,IN,CLK,RST);
input [3:0]IN;
input CLK,RST;
output [3:0]OUT;

D F1(IN[0],CLK,RST,OUT[0]);
D F2(IN[1],CLK,RST,OUT[1]);
D F3(IN[2],CLK,RST,OUT[2]);
D F4(IN[3],CLK,RST,OUT[3]);

endmodule
