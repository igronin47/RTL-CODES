`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 23:55:51
// Design Name: 
// Module Name: FA
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


module FA(S,Co,A,B,Cin);
input [3:0]A;
input [3:0]B;
input Cin;
output [3:0]S;
output Co;
wire [3:0]P;
wire [3:0]G;
wire [3:0]C;
assign 
P[0] = A[0]^B[0],
P[1] = A[1]^B[1],
P[2] = A[2]^B[2],
P[3] = A[3]^B[3];
assign
G[0] = A[0]&B[0],
G[1] = A[1]&B[1],
G[2] = A[2]&B[2],
G[3] = A[3]&B[3];
assign
C[0] = G[0]|(P[0]&Cin),
C[1] = G[1]|(P[1]&C[0]),
C[2] = G[2]|(P[2]&C[1]),
C[3] = G[3]|(P[3]&C[2]);
assign
S[0] = P[0]^Cin,
S[1] = P[1]^C[0],
S[2] = P[2]^C[1],
S[3] = P[3]^C[2];

assign Co = C[3];

endmodule
