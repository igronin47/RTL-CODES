`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2023 00:52:14
// Design Name: 
// Module Name: TB
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


module TB();
reg A0,A1,B0,B1;
wire G,E,L;
COMPARATOR uut(.G(G),.E(E),.L(L),.A0(A0),.A1(A1),.B0(B0),.B1(B1));
initial
begin
$monitor($time, "G=%b E=%b L=%b A0=%b A1=%b B0=%b B1=%b" , G,E,L,A0,A1,B0,B1);

A0=1; A1=1; B0=0; B1=1;
#50 A0=0; A1=0; B0=1; B1=0;
#50 A0=1; A1=0; B0=1; B1=1;
#50 A0=0; A1=0; B0=0; B1=0;
#50 A0=0; A1=0; B0=1; B1=0;
#50 A0=1; A1=1; B0=1; B1=1;
#50 $stop;
end
endmodule
