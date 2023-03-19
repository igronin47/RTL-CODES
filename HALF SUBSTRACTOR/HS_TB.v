`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2022 12:41:49
// Design Name: 
// Module Name: HS_TB
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


module HS_TB();
reg A,B;
wire D,Bo;
HS uut(.D(D), .Bo(Bo), .A(A), .B(B));
initial
begin
A=0; B=0;
#100 A=0; B=1;
#100 A=1; B=0;
#100 A=1; B=1;
#100 $stop;
end
endmodule
