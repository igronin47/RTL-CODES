`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 03:30:26
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
reg CLK,RST,MODE;
wire [3:0]OUT;

COUNTER uut(.OUT(OUT),.CLK(CLK),.RST(RST),.MODE(MODE));
initial
begin
$monitor($time,"OUT=%b", OUT);
CLK=1'b1;
RST=1'b0;
MODE=1'b1;
#70 RST=1'b1;
#200 MODE=1'b0;
#500 RST=1'b0;

end
always #10 CLK=~CLK;
endmodule
