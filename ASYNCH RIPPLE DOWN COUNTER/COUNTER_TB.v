`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 02:31:20
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
reg T;
reg CLK,RST;
wire [2:0]Q;
COUNTER uut(.Q(Q),.T(T),.CLK(CLK),.RST(RST));
initial
begin
$monitor($time,"Q=%b T=%b CLK=%b RST=%b ",Q,T,CLK,RST);

CLK=1'b0;
RST=1'b1;

#50  RST=1'b0; T=1'b1;
#700 RST=1'b1;

end
always #10 CLK=~CLK;
endmodule
