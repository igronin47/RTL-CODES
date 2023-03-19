`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2023 01:40:00
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
reg clk,rst;
wire [5:0]sec;
wire [4:0]hr;
wire [5:0]min;
DIGITAL_CLOCK uut(.clk(clk),.rst(rst),.sec(sec),.hr(hr),.min(min));
initial
begin
$monitor($time ," sec=%b    min=%b   hr=%b",sec,min,hr);

clk<=0;
rst<=1;

#100 rst=0;
end
always #5 clk=~clk; 
endmodule