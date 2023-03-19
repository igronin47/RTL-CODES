`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2023 00:04:10
// Design Name: 
// Module Name: ALU
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


module ALU(A,B,OP,R);
input [3:0]A;
input [3:0]B;
input [3:0]OP;
output  reg [7:0]R;
parameter 
ADD=4'b0000, SUB=4'b0001, MUL=4'b0011, DIV=4'b0111, AND=4'b1111, OR=4'b1000, NOT=4'b1001, NAND=4'b1011, NOR=4'b1010, XOR=4'b1100, XNOR=4'b1101;
always@(*)
case(OP)
ADD: R=A+B;
SUB: R=A-B;
MUL: R=A*B;
DIV: R=A/B;
AND: R=A&B;
OR:  R=A|B;
NOT: R=~A;
NAND: R=~(A&B);
NOR:  R=~(A|B);
XOR:  R=A^B;
XNOR: R=A~^B;
endcase
endmodule
