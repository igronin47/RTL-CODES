`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMIT SINGH
// 
// Create Date: 05.01.2023 23:36:25
// Design Name: 
// Module Name: FS_HS
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


module HS(D,Bo,A,B);
input A,B;
output D,Bo;
xor G1(D,A,B);
and G2(Bo,(~A),B);
endmodule


module FS_HS(D,Bo,A,B,Bin);
input A,B,Bin;
output D,Bo;
wire P,Q,R;
HS h1(P,Q,A,B);
HS h2(D,R,P,Bin);
assign Bo=Q|R;
endmodule