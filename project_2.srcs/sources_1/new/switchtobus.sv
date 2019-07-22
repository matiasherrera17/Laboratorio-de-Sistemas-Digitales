`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 18:08:25
// Design Name: 
// Module Name: switchtobus
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


module switchtobus(
    input logic clk,
    input logic [15:0]sw,
    input logic reset,
    output logic [7:0] na,
    output logic [7:0] nb);

always_ff @(posedge clk) begin
    if (~reset) begin 
         na <= sw[7:0];
         nb <= sw[15:8];
         end
    else begin   
        na <= 'd0;
        nb <= 'd0;
        end
     end
endmodule   


