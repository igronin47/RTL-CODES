`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 02:07:58
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


module RAM(DATA_OUT,DATA_IN,ADDR,RD,WR,CS);
input [15:0]DATA_IN;
input [15:0]ADDR;
input RD,WR,CS;
output [15:0]DATA_OUT;
reg [15:0]DATA_OUT;
reg [15:0]mem[1023:0];

always@(ADDR)
begin
if (WR) 
mem[ADDR] <= DATA_IN;

else if (RD)
DATA_OUT <= mem[ADDR];
end
endmodule
