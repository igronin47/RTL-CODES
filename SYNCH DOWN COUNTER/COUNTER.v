`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 03:07:05
// Design Name: 
// Module Name: COUNTER
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


module COUNTER(CLK,RST,OUT);
input CLK,RST;
output reg [3:0]OUT;
always@(posedge CLK or negedge RST)
begin
if (RST==0)
OUT=4'b1111;
else
OUT<=OUT-4'b0001;
end
endmodule