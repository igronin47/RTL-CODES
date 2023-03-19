`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 01:02:39
// Design Name: 
// Module Name: DECODER_TB
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


module DECODER_TB();
reg [1:0]A;
wire [3:0]I;
DECODER uut(.I(I), .A(A));
initial
begin
$monitor($time, "A=%b I=%b",A,I);

A=2'b00;
#80 A=2'b01;
#80 A=2'b11;
#80 A=2'b10;
#80 $stop;
end
endmodule
