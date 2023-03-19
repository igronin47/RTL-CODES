`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2023 01:12:09
// Design Name: 
// Module Name: DIGITAL_CLOCK
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


module DIGITAL_CLOCK(clk,rst,sec,hr,min);
input clk, rst;
output reg [5:0]sec;
output reg [5:0]min;
output reg [4:0]hr;
always@(posedge (clk))
begin
if (rst == 1)
      begin
      sec=0;
      hr=0;
      min=0;
      end
else 
   begin
    sec=sec+1;
       if (sec==60)
            begin
            min=min+1;
            sec=0;
            end
      
                   if (min==60)
                      begin
                      hr=hr+1;
                      min=0;
                      end
                  
                           if (hr==24)
                              begin
                              hr=0;
                              min=0;
                              sec=0;
                              end                
 end
end
endmodule