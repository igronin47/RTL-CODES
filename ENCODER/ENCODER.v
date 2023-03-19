`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 00:19:32
// Design Name: 
// Module Name: ENCODER
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


module ENCODER(Y,I);
input [3:0]I;
output reg [1:0]Y;
always@(*)
begin
case({I})
4'b1000: Y=2'b00;
4'b0100: Y=2'b01;
4'b0010: Y=2'b10;
4'b0001: Y=2'b11;
default:$display("error");
endcase
end
endmodule
