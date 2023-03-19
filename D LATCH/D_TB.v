`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2023 01:38:18
// Design Name: 
// Module Name: D_TB
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


module D_TB();
reg D;
reg EN;
reg RST;
wire Q;
D uut(.Q(Q),.D(D),.EN(EN),.RST(RST));
initial
begin
$monitor($time,"Q=%b D=%b EN=%b RST=%b", Q,D,EN,RST);

RST=1'b0; EN=1'b0;
#80 RST=1'b1; EN=1'b1; D=1'b1;
#80 RST=1'b1; EN=1'b0; D=1'b0;
#80 RST=1'b1; EN=1'b1; D=1'b0;
#80 $stop;
end
endmodule
