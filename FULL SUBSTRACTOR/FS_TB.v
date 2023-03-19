`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2022 00:48:20
// Design Name: 
// Module Name: FS_TB
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


module FS_TB();
reg A,B,Bin;
wire D,Bo;
FS uut(.D(D),.Bo(Bo), .A(A), .B(B), .Bin(Bin));
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
