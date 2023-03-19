`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2022 00:03:12
// Design Name: 
// Module Name: FA_HA_TB
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


module FA_HA_TB();
reg A,B,Cin;
wire S,Cout;
FA_HA uut(.S(S), .Cout(Cout), .A(A), .B(B), .Cin(Cin));
initial
begin
A=0; B=0; Cin=0;
#100 A=0; B=0; Cin=1;
#100 A=0; B=1; Cin=0;
#100 A=0; B=1; Cin=1;
#100 A=1; B=0; Cin=0;
#100 A=1; B=0; Cin=1;
#100 A=1; B=1; Cin=0;
#100 A=1; B=1; Cin=1;
#100 $stop;
end
endmodule
