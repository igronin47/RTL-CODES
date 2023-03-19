`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 00:10:38
// Design Name: 
// Module Name: FS_HS_TB
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


module FS_HS_TB();
reg A,B,Bin;
wire D,Bo;
FS_HS uut(.D(D), .Bo(Bo), .A(A), .B(B), .Bin(Bin));
initial
begin
A=0; B=0; Bin=0;
#100 A=0; B=0; Bin=1;
#100 A=0; B=1; Bin=0;
#100 A=0; B=1; Bin=1;
#100 A=1; B=0; Bin=0;
#100 A=1; B=0; Bin=1;
#100 A=1; B=1; Bin=0;
#100 A=1; B=1; Bin=1;
#100 $stop;
end
endmodule
