`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 00:36:35
// Design Name: 
// Module Name: FA_TB
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


module FA_TB();
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]S;
wire Co;
FA uut(.S(S), .Co(Co), .A(A), .B(B), .Cin(Cin));
initial
begin
$monitor($time,"A=%b, B=%b, Cin=%b, S=%b, Co=%b", A,B,Cin,S,Co);
end
initial
begin
A=4'b0000; B=4'b0001; Cin=0;
#50 A=4'b0101; B=4'b0010; Cin=1;
#50 A=4'b0111; B=4'b0011; Cin=1; 
#50 A=4'b0110; B=4'b0110; Cin=0;
#50 A=4'b1111; B=4'b0010; Cin=1;
#50 $stop;
end
endmodule
