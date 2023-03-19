`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 01:13:23
// Design Name: 
// Module Name: FullAdderTB
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


module FullAdderTB();
reg A, B, C;
wire Sum, Carry;
FullAdder uut(.Sum(Sum), .Carry(Carry), .A(A), .B(B), .C(C));
initial
begin
A=0; B=0; C=0;
#100 A=0; B=0; C=1;
#100 A=0; B=1; C=0;
#100 A=0; B=1; C=1;
#100 A=1; B=0; C=0;
#100 A=1; B=0; C=1;
#100 A=1; B=1; C=0;
#100 A=1; B=1; C=1;
#100 $stop;
end
endmodule
