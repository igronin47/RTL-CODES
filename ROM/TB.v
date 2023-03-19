`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 03:27:20
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
reg [2:0]ADDR;
reg CLK;
wire [3:0]DATA;
ROM uut(.ADDR(ADDR),.DATA(DATA),.CLK(CLK));
initial
begin
CLK=1'b0;
#20 CLK=1'b1; ADDR=3'b001;
#50 ADDR=3'b101;
#50 ADDR=3'b100;
#50 ADDR=3'b111;
#50 ADDR=3'b001;
#50 $stop;
end
always #10 CLK=~CLK;
endmodule
