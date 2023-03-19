`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMIT SINGH
// 
// Create Date: 29.01.2023 01:31:53
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




module FSM(IN, OUT, CLK, RST);
input IN, CLK, RST;
output reg OUT;
reg [1:0]PST,NXT;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
always@(posedge CLK or posedge RST)
begin
if (RST)
PST<=S0;
else
PST<=NXT;
end

always@(PST,IN)
case(PST)
S0: begin OUT<=IN?0:0; NXT<=IN?S1:S0; end
S1: begin OUT<=IN?0:0; NXT<=IN?S1:S2; end
S2: begin OUT<=IN?0:0; NXT<=IN?S3:S0; end
S3: begin OUT<=IN?1:0; NXT<=IN?S1:S2; end
endcase
endmodule

