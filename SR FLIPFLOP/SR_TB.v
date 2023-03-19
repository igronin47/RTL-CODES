`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2023 02:05:40
// Design Name: 
// Module Name: SR_TB
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


module SR_TB();
reg S,R,CLK;
wire Q,Qbar;
SR_FLIPFLOP uut(.Q(Q), .Qbar(Qbar), .CLK(CLK), .S(S), .R(R));
initial
begin
$monitor($time, "S=%b R=%b CLK=%b Q=%b Qbar=%b", S,R,Q,CLK,Qbar);

CLK=1'b1;
S=1'b1; R=1'b0; 
#50 S=1'b0; R=1'b1;
#50 S=1'b0; R=1'b0;
#50 S=1'b1; R=1'b1;
#50 S=1'b1; R=1'b0;
#50 S=1'b1; R=1'b0;
#50 $stop;

end
always #10 CLK=~CLK;
endmodule

