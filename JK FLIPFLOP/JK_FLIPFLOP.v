`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 01:21:59
// Design Name: 
// Module Name: JK_FLIPFLOP
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


module JK_FLIPFLOP(Q,Qbar,J,K,CLK);
input J;
input K;
input CLK;
output reg Q;
output reg Qbar;
always@(posedge CLK)
begin

if (J==1'b0 & K==1'b0)
begin
Q<=Q;
Qbar<=Qbar;
end

else if (J==1'b0 & K==1'b1)
begin
Q<=0;
Qbar<=1;
end

else if (J==1'b1 & K==1'b0)
begin
Q<=1;
Qbar<=0;
end

else if (J==1'b1 & K==1'b1)
begin
Q<=Qbar;
Qbar<=Q;
end
else if (J==1'bx & K==1'bx)
begin
Q<=Q;
Qbar<=Qbar;
end

end
endmodule
