`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 01:16:33
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
reg IN, CLK, RST;
wire OUT;
FSM uut(.IN(IN), .OUT(OUT), .CLK(CLK), .RST(RST));
initial
begin 
$monitor($time,"IN=%b OUT=%b CLK=%b RST=%b",IN, OUT, CLK, RST);
RST=1'b1;
#30 RST=1'b0;
#200 RST=1'b1;
end

initial
begin
CLK=1'b1;
#10 IN=1'b0;#10 IN=1'b0;#10 IN=1'b1;#10 IN=1'b0;#10 IN=1'b1;
#10 IN=1'b1;#10 IN=1'b1;#10 IN=1'b0;#10 IN=1'b1;#10 IN=1'b1;
#10 IN=1'b0;#10 IN=1'b1;#10 IN=1'b0;#10 IN=1'b1;#10 IN=1'b1;
#10 IN=1'b1;#10 IN=1'b1;#10 IN=1'b0;#10 IN=1'b1;#10 IN=1'b1;
end
always #5 CLK=~CLK;
endmodule
