`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2023 01:42:02
// Design Name: 
// Module Name: SR_LATCH
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


module SR_FLIPFLOP(Q,Qbar,S,R,CLK);
input S,R,CLK;
output reg Q;
output reg Qbar;
always@(posedge CLK)
begin

if (S==1'b0 & R==1'b1)
begin
Q<=0;
Qbar<=1;
end

else if (S==1'b1 & R==1'b0 )
begin
Q<=1;
Qbar<=0;
end

else if (S==1'b1 & R==1'b1 )
begin
Q<=1'bx;
Qbar<=1'bx;
end

else if (S==1'b0 & R==1'b0 )
begin
Q<=Q;
Qbar<=Qbar;
end
end
endmodule
