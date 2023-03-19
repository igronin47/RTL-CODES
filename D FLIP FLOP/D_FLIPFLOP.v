`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2023 17:15:09
// Design Name: 
// Module Name: D_FLIPFLOP
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


module D_FLIPFLOP(Q,D,CLK,RST);
input CLK;
input RST;
input D;
output reg Q;
always@(posedge CLK)
begin
if (!RST)
  Q<=0;
else
   Q<=D;
end
endmodule
