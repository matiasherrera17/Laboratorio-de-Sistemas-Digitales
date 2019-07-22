`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 17:57:43
// Design Name: 
// Module Name: resta
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


module resta(
    input logic [7:0] num1,
    input logic [7:0] num2,
    output logic [7:0] numfinal  );
    
    always_comb begin
    numfinal = (numfinal = num1 - num2);
    end 
endmodule
