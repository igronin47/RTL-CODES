`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMIT SINGH
// 
// Create Date: 30.12.2022 00:24:54
// Design Name: 
// Module Name: HS
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


module HS(D,Bo, A, B);
input A, B;
output D, Bo;
wire P;
xor G1(D, A, B);
not (P,A);
and G2(Bo, P, B); 
endmodule
