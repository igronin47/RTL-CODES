`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 01:38:52
// Design Name: 
// Module Name: JK_TB
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


module JK_TB();
reg J,K,CLK;
wire Q,Qbar;
JK_FLIPFLOP uut(.Q(Q), .Qbar(Qbar), .J(J), .K(K), .CLK(CLK));
initial
begin
$monitor($time, "J=%b K=%b CLK=%b Q=%b Qbar=%b", J,K,CLK,Q,Qbar);

CLK=1'b1;
J=1'b0; K=1'b1;
#50 J=1'b0; K=1'b1;
#50 J=1'b1; K=1'b0;
#50 J=1'b0; K=1'b0;
#50 J=1'b1; K=1'b1;
#50 J=1'bx; K=1'bx;
#50 $stop;

end
always #10 CLK=~CLK;
endmodule
