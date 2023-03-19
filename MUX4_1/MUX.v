`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 23:19:48
// Design Name: 
// Module Name: MUX
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


module MUX(Y,I,S1,S2);
input [3:0]I;
input S1,S2;
output reg Y;
always@(*)
begin
case({S1,S2})
2'b00: Y<=I[0];
2'b01: Y<=I[1];
2'b10: Y<=I[2];
2'b11: Y<=I[3];
endcase
end
endmodule
