`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT GWALIOR
// Engineer: AMIT SINGH
// 
// Create Date: 21.12.2022 00:21:59
// Design Name: 
// Module Name: HalfAdder
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


module HalfAdder(A, B, S,C);
input A, B;
output S, C;
xor (S,A,B);
and (C,A,B);
endmodule
