`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 01:27:09
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


module TB();
reg [15:0]IN, CLK, WR,RD;
reg [9:0]ADDR;
wire [15:0]OUT;
RAM uut(.OUT(OUT),.IN(IN),.ADDR(ADDR),.CLK(CLK),.RD(RD),.WR(WR));
initial
begin
/*$monitor($time,"OUT=%b IN=%b ADDR=%b CLK=%b RD=%b WR=%b",OUT,IN,ADDR,CLK,RD,WR);*/

CLK=1'b1;
WR=1'b1; RD=1'b0;
#20 ADDR=10'h5;
IN=16'h8;
#20 ADDR=10'h6;
IN=16'h7;
#20 ADDR=10'h7;
IN=16'h10;
#20 ADDR=10'h8;
IN=16'h12;

#10
WR=1'b0; RD=1'b1;
ADDR=10'h5;
#20
ADDR=10'h6;
#20 ADDR=10'h7;
#20 ADDR=10'h8;
#20 $stop;
end
always #5 CLK=~CLK;
endmodule
