`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT GWALIOR
// Engineer: AMIT SINGH
// 
// Create Date: 23.01.2023 01:39:55
// Design Name: 
// Module Name: PISO
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



module MUX(Y,I0,I1,S);
input I0,I1,S;
output Y;
assign Y=((~S)&I0)|(S&I1); 
endmodule



module PISO(OUT,IN,CLK,RST,S);
input [3:0]IN;
input CLK,RST,S;
output OUT;
wire Q3,Q2,Q1,D2,D1,D0;

D  F1(IN[0],CLK,RST,Q3);
D  F2(D2,CLK,RST,Q2);
D  F3(D1,CLK,RST,Q1);
D  F4(D0,CLK,RST,OUT);

MUX  M1(D2,Q3,S,IN[1]);
MUX  M2(D1,Q2,S,IN[2]);
MUX  M3(D0,Q1,S,IN[3]);

endmodule
