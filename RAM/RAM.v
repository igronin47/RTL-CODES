`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 01:01:47
// Design Name: 
// Module Name: RAM
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


module RAM(OUT,IN,ADDR,CLK,RD,WR);
input [15:0]IN;
input [9:0]ADDR;
input CLK,RD,WR;
output reg [15:0]OUT;
reg [15:0]mem[1023:0];
always@(posedge CLK)
begin
if (WR && !RD)
mem[ADDR]<=IN;
else if (RD && !WR)
OUT<=mem[ADDR];
end
endmodule
