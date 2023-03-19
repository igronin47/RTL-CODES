`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 02:00:24
// Design Name: 
// Module Name: T_TB
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


module T_TB();
reg T,CLK,RST;
wire Q,Qbar;
T_FLIPFLOP uut(.Q(Q), .Qbar(Qbar), .RST(RST), .CLK(CLK), .T(T));
initial
begin
$monitor($time, "T=%b CLK=%b Q=%b Qbar=%b RST=%b",RST, Q,Qbar,T,CLK);

CLK=1'b1;
T=1'b1; RST=1'b1;
#50 T=1'b0; RST=1'b1;
#50 T=1'b1; RST=1'b1;
#50 T=1'b0; RST=1'b0;
#50 T=1'b1; RST=1'b0;
#50 T=1'b0; RST=1'b1;
#50 $stop;
end
always #10 CLK=~CLK;
endmodule
