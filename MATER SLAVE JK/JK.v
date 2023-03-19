`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2023 02:51:37
// Design Name: 
// Module Name: JK
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


module JK(Q,Qbar,J,K,CLK,RST);
input J,K,CLK,RST;
output reg Q;
output reg Qbar;
wire A,B,C,D,E,F,G,H,I;

and  G1(A,J,Qbar);
and  G2(B,K,Q);
nand  G3(C,A,CLK);
nand  G4(D,B,CLK);
nand  G5(E,C,F);
nand  G6(F,D,E);
not  G7(I,CLK);
nand  G8(G,E,I);
nand  G9(H,F,I);
nand  G10(Q,G,Qbar);


endmodule
