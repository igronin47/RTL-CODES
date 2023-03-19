`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2023 17:55:25
// Design Name: 
// Module Name: D_TB
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


module D_TB();
reg D,CLK,RST;
wire Q;
D_FLIPFLOP uut(.Q(Q), .D(D), .CLK(CLK), .RST(RST));
initial
begin
$monitor($time , "D=%b CLK=%b RST=%b Q=%b", D,Q,RST,CLK);
CLK=1'b1;
 RST=1'b1;  D=1'b1;
#50 RST=1'b1;  D=1'b0;
#50 RST=1'b0;  D=1'b1;
#50 RST=1'b1;  D=1'b1;
#50 $stop;
end
always #10 CLK=~CLK;
endmodule
