`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMIT SINGH
// 
// Create Date: 29.12.2022 23:34:38
// Design Name: 
// Module Name: FA_HA
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


module HA(S, Cout, A, B);
input A, B;
output S, Cout;
xor (S, A, B);
and (Cout, A, B);
endmodule


module FA_HA(S,Cout,A,B,Cin);
input A,B,Cin;
output S, Cout;
wire P,Q,R;
HA hf1(S,Q,Cin,P);
HA hf2(P,R,A,B);
assign Cout= Q | R ;
endmodule