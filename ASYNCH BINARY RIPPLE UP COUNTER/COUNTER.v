`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 01:43:27
// Design Name: 
// Module Name: COUNTER
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
module T(T,CLK,RST,Q);
input T,RST,CLK;
output reg Q;
always@(negedge CLK or posedge RST)
begin
if (RST)
Q<=1'b0;
else if (T)
Q<=(~Q);
else 
Q<=Q;
end
endmodule

module COUNTER(Q,T,CLK,RST);
input T;
input CLK,RST;
output [2:0]Q;

T F1(T,CLK,RST,Q[0]);
T F2(T,Q[0],RST,Q[1]);
T F3(T,Q[1],RST,Q[2]);

endmodule
