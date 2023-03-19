`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 03:10:16
// Design Name: 
// Module Name: COUNTER_TB
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

module COUNTER_TB();
reg CLK,RST;
wire [3:0]OUT;
COUNTER uut(.CLK(CLK),.RST(RST),.OUT(OUT));
initial
begin
$monitor($time," OUT=%b ",OUT);

CLK=1'b0;
RST=1'b0;
#50 RST=1'b1;

end
always #10 CLK=~CLK;
endmodule
