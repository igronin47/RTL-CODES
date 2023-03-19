`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2023 00:39:10
// Design Name: 
// Module Name: COMPARATOR
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


module COMPARATOR(G,E,L,A0,A1,B0,B1);
input A0,A1,B0,B1;
output G,E,L;
assign G= (A0&(~B1)&(~B0))|(A1&(~B1))|(A1&A0&(~B0));
assign E= ((A0&B0)|((~A0)&(~B0)))&((A1&B1)|((~A1)&(~B1)));
assign L= (((~A1)&B1)|((~A0)&B1&B0)|((~A1)&(~A0)&B0));
endmodule
