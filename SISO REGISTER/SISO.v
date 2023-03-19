`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 01:04:45
// Design Name: 
// Module Name: SISO
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


 

module SISO(OUT,IN,CLK,RST);
input IN,CLK,RST;
output OUT;
wire Q3,Q2,Q1,Q0;

D  F1(IN,CLK,RST,Q3);
D  F2(Q3,CLK,RST,Q2);
D  F3(Q2,CLK,RST,Q1);
D  F4(Q1,CLK,RST,OUT);
endmodule

