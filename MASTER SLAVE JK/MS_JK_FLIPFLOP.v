`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 19:09:07
// Design Name: 
// Module Name: MS_JK_FLIPFLOP
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


module FF(J,K,CLK,Q,Qbar,RST);
input J,K,CLK,RST;
output reg Q,Qbar;

always@(CLK==1'b1)
begin
if (RST==1'b0)
begin
Q<=1;
Qbar<=0;
end

else if (J==1'b0 & K==1'b0 & RST==1'b1)
begin
Q<=Q;
Qbar<=Qbar;
end

else if (J==1'b0 & K==1'b1 & RST==1'b1)
begin
Q<=0;
Qbar<=1;
end

else if (J==1'b1 & K==1'b0 & RST==1'b1)
begin
Q<=1;
Qbar<=0;
end

else if (J==1'b1 & K==1'b1 & RST==1'b1)
begin
Q<=Qbar;
Qbar<=Q;
end

else if (J==1'bx & K==1'bx & RST==1'b1)
begin
Q<=Q;
Qbar<=Qbar;
end

end
endmodule