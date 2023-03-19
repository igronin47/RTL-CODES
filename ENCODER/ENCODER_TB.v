`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 00:31:57
// Design Name: 
// Module Name: ENCODER_TB
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


module ENCODER_TB();
reg [3:0]I;
wire [1:0]Y;
ENCODER uut(.Y(Y), .I(I));
initial
begin
$monitor($time, "Y=%b I=%b", Y,I);

I=4'b1000; 
#80 I=4'b0100;
#80 I=4'b0010;
#80 I=4'b0001;
#80 I=4'b0100;
#80 $stop;
end
endmodule
