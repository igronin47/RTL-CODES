`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 00:22:00
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
reg A,B;
wire S;
AND_MUX uut(.S(S), .A(A), .B(B));
initial
begin
$monitor($time," A=%b, B=%b, S=%b", A,B,S);

A=0; B=0;
#50 A=1; B=0;
#50 A=0; B=1;
#50 A=1; B=1;
#50 $stop;
end
endmodule
