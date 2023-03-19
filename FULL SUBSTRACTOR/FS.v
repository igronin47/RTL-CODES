`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  AMIT SINGH
// 
// Create Date: 30.12.2022 13:02:26
// Design Name: 
// Module Name: FS
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


module FS(D,Bo,A,B,Bin);
input A,B,Bin;
output D,Bo;
wire P,Q,R,S,T,U;
xor G1(D,P,Bin);
xor G2(P,A,B);
not G3(R,A);
and G4(S,R,B);
and G5(T,R,Bin);
and G6(U,B,Bin);
or  G7(Bo,S,T,U);
endmodule
