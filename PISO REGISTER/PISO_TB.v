`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 02:09:29
// Design Name: 
// Module Name: PISO_TB
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


module PISO_TB();
reg [3:0]IN;
reg CLK,RST,S;
wire OUT;
PISO uut(.OUT(OUT),.IN(IN), .CLK(CLK), .RST(RST),.S(S));
initial
begin
$monitor($time, " IN=%b CLK=%b RST=%b S=%b OUT=%b", IN,CLK,RST,S,OUT );

CLK=1'b1;RST=1'b1;
end
initial
begin
#50 RST=1'b0; S=1'b0; IN=4'b1011;
#50 RST=1'b0; S=1'b1;  IN=4'b1011;
#50 RST=1'b0; S=1'b1;  IN=4'b1011;
#50 RST=1'b0; S=1'b1;  IN=4'b1011;
#50 RST=1'b0; S=1'b1;  IN=4'b1011;
end
always #10 CLK=~CLK;
endmodule
