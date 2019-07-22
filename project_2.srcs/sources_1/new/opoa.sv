`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 18:03:28
// Design Name: 
// Module Name: opoa
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


module opoa(
    input logic btnl,btnr,
    input logic [7:0] num1,num2,
    output logic [7:0] numerof );
    
    logic [7:0] ca1,ca2;
    
    mand DUT(.num1(num1),.num2(num2),.numfinal(ca1));
    mor QUT(.num1(num1),.num2(num2),.numfinal(ca2));
    
    always_comb begin 
        if (btnl == 1)
            ca1 = numerof;      //NOS ENTREGA UN NUMERO DE 8BIT 
        if (btnr == 1)
            ca2 = numerof;
        end
        
endmodule