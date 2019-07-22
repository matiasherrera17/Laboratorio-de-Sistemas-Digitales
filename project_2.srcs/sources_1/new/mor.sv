`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 18:01:26
// Design Name: 
// Module Name: mor
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

module mor(
    input logic [7:0] num1,
    input logic [7:0] num2,
    output logic [7:0] numfinal  );
    
    always_comb begin
    numfinal = (numfinal = num1 | num2);
    end 
endmodule
