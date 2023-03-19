`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 01:54:19
// Design Name: 
// Module Name: T_FLIPFLOP
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


module T_FLIPFLOP(Q,Qbar,T,CLK,RST);
input T,CLK,RST;
output reg Q, Qbar;
always@(posedge CLK)
begin

if (RST==1'b1)
begin
Q<=0;
Qbar<=1;
end

else if (T==1'b0)
begin
Q<=Q;
Qbar<=Qbar;
end

else if (T==1'b1)
begin
Q<=Qbar;
Qbar<=Q;
end

end
endmodule
