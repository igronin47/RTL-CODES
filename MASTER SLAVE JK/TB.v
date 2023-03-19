`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 20:02:07
// Design Name: 
// Module Name: TB
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
reg J,K,CLK,RST;
wire Q,Qbar;
FF uut(.Q(Q), .Qbar(Qbar), .J(J), .K(K), .CLK(CLK),.RST(RST));
initial
begin
$monitor($time, "J=%b K=%b CLK=%b Q=%b Qbar=%b", J,K,CLK,Q,Qbar);

CLK=1'b1;
J=1'b0; K=1'b1; RST=1'b1;
#50 J=1'b0; K=1'b1; RST=1'b0;
#50 J=1'b0; K=1'b1; RST=1'b0;
#50 J=1'b1; K=1'b0; RST=1'b0;
#50 J=1'b0; K=1'b0; RST=1'b0;
#50 J=1'b1; K=1'b1; RST=1'b0;
#50 J=1'bx; K=1'bx; RST=1'b0;
#50 $stop;

end
always #10 CLK=~CLK;
endmodule