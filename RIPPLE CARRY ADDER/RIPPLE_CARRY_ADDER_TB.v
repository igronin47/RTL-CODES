`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 00:07:06
// Design Name: 
// Module Name: RIPPLE_CARRY_ADDER_TB
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
module ripple_adder_4tb();
reg [3:0]a,b,ci;
wire [4:0]s;
ripple_adder_4 uut (a,b,ci,s);
initial
begin
a=4'b0001;b=4'b1101;ci=1'b1;
#20 a=4'b0101;b=4'b1001;ci=1'b1;
#20 a=4'b1101;b=4'b1111;ci=1'b0;
#20 a=4'b0111;b=4'b1101;ci=1'b1;
#20 a=4'b1101;b=4'b1101;ci=1'b0;
#20 a=4'b1001;b=4'b1101;ci=1'b1;
#20 $stop;
end
endmodule