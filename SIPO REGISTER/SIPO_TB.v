`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 02:20:01
// Design Name: 
// Module Name: SIPO_TB
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


module SIPO_TB();
reg IN,CLK,RST;
wire [3:0]Q;
SIPO uut(.Q(Q), .IN(IN), .CLK(CLK), .RST(RST));
initial
begin
$monitor($time,"Q=%b IN=%b CLK=%b RST=%b", Q,IN,CLK,RST);
RST=1'b1; CLK=1'b1;
#50 RST=1'b0; IN=1'b0;
#50 IN=1'b1; RST=1'b0;
#50 IN=1'b0; RST=1'b0;
#50 IN=1'b1; RST=1'b0;
#50 IN=1'b0; RST=1'b0;
#50 IN=1'b1; RST=1'b0;
#50 IN=1'b0; RST=1'b0;
#50 IN=1'b0; RST=1'b0;
end
always #10 CLK=~CLK;
endmodule
