`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 00:42:13
// Design Name: 
// Module Name: HalfAdderTB
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


module HalfAdderTB();
reg A,B;
wire S,C;
HalfAdder uut(.S(S), .C(C), .A(A), .B(B));
initial
begin
A=0; B=0;
#20 A=1; B=0;
#20 A=0; B=1;
#20 A=1; B=1;
#20 $stop;
end
endmodule
