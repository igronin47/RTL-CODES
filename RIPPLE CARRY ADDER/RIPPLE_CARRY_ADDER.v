`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 23:37:37
// Design Name: 
// Module Name: RIPPLE_CARRY_ADDER
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


/*module FA(S,Co,A,B,C);
input A,B,C;
output S,Co;
assign S= A^B^C ;
assign Co=(A&B)|(A&C)|(B&C);
endmodule


module RIPPLE_CARRY_ADDER(S,Co,A,B);
input  [3:0]A, [3:0]B;
output [3:0]S;
output  Co;
wire C0,C1,C2,C3;
FA H1(S[0],C1,A[0],B[0],C0);
FA H2(S[1],C2,A[1],B[1],C1);
FA H3(S[2],C3,A[2],B[2],C2);
FA H4(S[3],Co,A[3],B[3],C3);
endmodule
*/

module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum =a^b^c;
assign carry = (a&b)|(b&c)|(c&a);
endmodule
module ripple_adder_4(a,b,ci,s);
input [3:0]a,b;
input ci;
output [4:0]s;
wire [3:1]c;
fulladder G1(a[0],b[0],ci,s[0],c[1]);
fulladder G2(a[1],b[1],c[1],s[1],c[2]);
fulladder G3(a[2],b[2],c[2],s[2],c[3]);
fulladder G4(a[3],b[3],c[3],s[3],s[4]);
endmodule