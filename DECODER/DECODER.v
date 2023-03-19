`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 00:53:00
// Design Name: 
// Module Name: DECODER
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


module DECODER(A,I);
input [1:0]A;
output reg [3:0]I;
always@(*)
begin
case({A})
2'b00: I=4'b0001;
2'b01: I=4'b0010;
2'b10: I=4'b0100;
2'b11: I=4'b1000;
default:$display("error");
endcase
end
endmodule
