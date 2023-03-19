`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 00:17:04
// Design Name: 
// Module Name: CLOCK
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
 
module clk_div(
    input clk,
    input rst,
    output reg ce);
    
    reg [27:0] temp; 
    
    always @(posedge clk)
      if (rst)
       begin
        ce <= 1'b0;
        temp <= 'b0;
       end
      else if (temp == 100_000_000 - 1)
        begin
         ce<= 1'b1;
         temp <= 'b0;
        end
      else
        begin
         ce<= 1'b0;
         temp <= temp + 1'b1;
        end
endmodule
