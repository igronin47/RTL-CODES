`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 02:01:22
// Design Name: 
// Module Name: SIPO
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



module SIPO(Q,IN,CLK,RST);
input IN,CLK,RST;
output [3:0]Q;

D  F1(IN,CLK,RST,Q[3]);
D  F2(Q[3],CLK,RST,Q[2]);
D  F3(Q[2],CLK,RST,Q[1]);
D  F4(Q[1],CLK,RST,Q[0]);

endmodule
