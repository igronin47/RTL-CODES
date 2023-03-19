`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 03:17:46
// Design Name: 
// Module Name: ROM
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


module ROM(ADDR,DATA,CLK);
input [2:0]ADDR;
input CLK;
output reg [3:0]DATA;
always@(posedge CLK)
case(ADDR)
3'b000: DATA=4'b1010;
3'b001: DATA=4'b1011;
3'b010: DATA=4'b1110;
3'b011: DATA=4'b1010;
3'b101: DATA=4'b1111;
3'b100: DATA=4'b1000;
3'b110: DATA=4'b1100;
3'b111: DATA=4'b1001;
endcase
endmodule
