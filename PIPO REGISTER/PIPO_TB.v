`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2023 02:33:13
// Design Name: 
// Module Name: PIPO_TB
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


module PIPO_TB();
reg [3:0]IN;
reg CLK,RST;
wire [3:0]OUT;
PIPO uut(.OUT(OUT),.IN(IN),.CLK(CLK),.RST(RST));
initial
begin
$monitor($time," OUT=%b IN=%b CLK=%b RST=%b ", OUT,IN,CLK,RST);

RST=1'b1; CLK=1'b1;

#25 RST=1'b0; 
#50 IN=4'b1010;
#50 RST=1'b1;

end
always #10 CLK=~CLK;
endmodule
