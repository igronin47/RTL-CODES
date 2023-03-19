`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2023 01:09:58
// Design Name: 
// Module Name: D
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


module D(Q,D,EN,RST);
input D;
input EN;
input RST;
output reg Q;
always@(EN or RST)
begin
if (!RST)  
  Q <= 0;
else  
 if (EN)  
     Q <= D;  
end
endmodule