`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 17:55:47
// Design Name: 
// Module Name: opsr
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


module opsr(
    input logic btnu,btnd,
    input logic [7:0] num1,num2,
    output logic [7:0] numerof );
    
    logic [7:0] ca1,ca2;
    
    suma DUT(.num1(num1),.num2(num2),.numfinal(ca1));
    resta QUT(.num1(num1),.num2(num2),.numfinal(ca2));
    
    always_comb begin 
        if (btnu == 1)
            ca1 = numerof;      //NOS ENTREGA UN NUMERO DE 8BIT 
        if (btnd == 1)
            ca2 = numerof;
        end
        
endmodule
