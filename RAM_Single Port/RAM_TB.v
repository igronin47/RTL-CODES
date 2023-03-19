`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 17:56:51
// Design Name: 
// Module Name: RAM_TB
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


module RAM_TB();
reg [15:0]DATA_IN;
reg [15:0]ADDR;
reg RD,WR,CS;
wire [15:0]DATA_OUT;
integer K;
RAM uut(.DATA_OUT(DATA_OUT),.DATA_IN(DATA_IN),.ADDR(ADDR),.RD(RD),.WR(WR),.CS(CS));
initial
begin
$monitor($time, "DATA_OUT=%h DATA_IN=%h ADDR=%h RD=%b WR=%b CS=%b",DATA_OUT,DATA_IN,ADDR,RD,WR,CS);

for (K=0; K<=1023; K=K+1)
begin
DATA_IN = (K+K) % 256; RD=0; WR=1; CS=1;
ADDR=K;
#10 WR=0; CS=0;
end

for (K=0; K<=1023; K=K+1)
begin
WR=0; RD=1; CS=1;
ADDR = K;
/*$display("ADDR:%d DATA_IN:%d DATA_OUT=%d",DATA_OUT, ADDR, DATA_IN);*/
#10 CS=0;
end
end
endmodule
