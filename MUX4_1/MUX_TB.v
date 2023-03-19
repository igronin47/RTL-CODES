`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 00:01:44
// Design Name: 
// Module Name: MUX_TB
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


module MUX_TB();
reg [3:0]I, S1,S2;
wire Y;
MUX uut(.Y(Y),.S1(S1),.S2(S2),.I(I));
initial
begin
$monitor($time,"Y=%b S1=%b S2=%b I=%b", Y,I,S1,S2);

I=4'b0010; S1=0; S2=0;
#80 I=4'b0110; S1=1; S2=0;
#80 I=4'b1110; S1=0; S2=1;
#80 I=4'b1010; S1=1; S2=1;
#80 I=4'b0110; S1=0; S2=1;
#80 $stop;
end
endmodule
