`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 02:26:00
// Design Name: 
// Module Name: FSM
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



module FSM(IN,OUT,CLK,RST);
input IN,CLK,RST;
output reg OUT;
parameter s00=3'b000,s10=3'b001,s20=3'b010,s30=3'b011,s01=3'b100;
reg [2:0]PST,NXT;
always@(posedge CLK,posedge RST)
begin
if(RST) PST<=s00;
else PST<=NXT;
end
always@(IN,PST)
case(PST)
s00:begin OUT=IN?0:0; NXT=IN?s10:s00; end
s10:begin OUT=IN?0:0; NXT=IN?s10:s20; end
s20:begin OUT=IN?0:0; NXT=IN?s30:s00; end
s30:begin OUT=IN?0:0; NXT=IN?s01:s20; end
s01:begin OUT=IN?1:0; NXT=IN?s10:s20; end
endcase
endmodule