`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2019 18:05:02
// Design Name: 
// Module Name: topmod
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

 module topmodule(
    
    input logic CLK100MHZ,
    input logic [15:0]SW,
    input logic BTNU,BTND,BTNL,BTNR,CPU_RESETN,
    
    
    output logic [15:0]LED,
    
    output logic CA,CB,CC,CD,CE,CF,CG,
    output logic [7:0]AN                 );
    
    logic [7:0] cable01;
    logic [7:0] cable02;
    logic [3:0] busbotones;
    logic [7:0] cable03;
    logic [7:0] cable04;
    logic [7:0] cable05;
    
    logic cablecasoneutro;
    
    switchtobus QUT(.clk(CLK100MHZ),.sw(SW),.reset(CPU_RESETN),.na(cable01),.nb(cable02));
                    
    opsr WUT(.btnu(BTNU),.btnd(BTND),.num1(cable01),.num2(cable02),.numerof(cable03));
    
    opoa EUT(.btnl(BTNL),.btnr(BTNR),.num1(cable01),.num2(cable02),.numerof(cable04));
    
    
                    
    assign busbotones = {BTNU,BTND,BTNL,BTNR};
    
    always_comb begin
    
    if ((busbotones == 4'b1000) | (busbotones == 4'b0100)) //SUMA Y RESTA
        
        cable03 = cable05;    
        
    else if ((busbotones == 4'b0010) | (busbotones == 4'b0001)) //AND Y OR
    
        cable04 = cable05;                                 //CABLE 5 ES MI NUMERO
    else
        
        assign cable05 = 0;
        
    prendeled RUT(.na(cable05),.led0(LED[0]),.led1(LED[1]),.led2(LED[2]),
                    .led3(LED[3]),.led4(LED[4]),.led5(LED[5]),.led6(LED[6]),.led7(LED[7]));   
    
    end
endmodule