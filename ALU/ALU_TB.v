`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2023 00:27:37
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB();
reg [3:0]A;
reg [3:0]B;
reg [3:0]OP;
wire [7:0]R;
ALU uut(.R(R), .A(A), .B(B), .OP(OP));
initial
begin
$monitor($time, "A=%b B=%b OP=%b R=%b",A,B,OP,R );

A=4'b0111;
B=4'b0101;

OP=4'b0000;
#50 OP=4'b0001;
#50 OP=4'b0011;
#50 OP=4'b0111;
#50 OP=4'b1111;
#50 OP=4'b1000;
#50 OP=4'b1001;
#50 OP=4'b1011;
#50 OP=4'b1010;
#50 OP=4'b1100;
#50 OP=4'b1101;
#50 $stop;
end
endmodule
