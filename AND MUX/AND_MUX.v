`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2023 23:58:51
// Design Name: 
// Module Name: AND_MUX
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


module MUX(Y,I1,I2,S);
input I1,I2;
input S;
output reg Y;
always@(*)
begin
case(S)
0: Y=I1;
1: Y=I2;
endcase
end
endmodule



module AND_MUX(S,A,B);
input A,B;
output S;
MUX G1(S,0,A,B);
endmodule