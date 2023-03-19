`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 01:08:51
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(A, B, C, Sum, Carry);
input A, B, C;
output reg Sum, Carry;
always@(A or B or C)
begin
case ({A, B, C})
3'b000: begin Sum=1'b0; Carry=1'b0; end
3'b001: begin Sum=1'b1; Carry=1'b0; end
3'b010: begin Sum=1'b1; Carry=1'b0; end
3'b011: begin Sum=1'b0; Carry=1'b1; end
3'b100: begin Sum=1'b1; Carry=1'b0; end
3'b101: begin Sum=1'b0; Carry=1'b1; end
3'b110: begin Sum=1'b0; Carry=1'b1; end
3'b111: begin Sum=1'b1; Carry=1'b1; end
endcase
end
endmodule
