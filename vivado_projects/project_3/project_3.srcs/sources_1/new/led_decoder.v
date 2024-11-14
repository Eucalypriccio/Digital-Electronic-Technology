`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 09:21:24
// Design Name: 
// Module Name: led_decoder
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


module led_decoder(
    input A,
    input B,
    input C,
    output A_stat,
    output B_stat,
    output C_stat,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
    assign {a,b,c,d,e,f,g} = 
    ( {A,B,C}==3'b000)?7'b0000001:
    (({A,B,C}==3'b001)?7'b1001111:
    (({A,B,C}==3'b010)?7'b0010010:
    (({A,B,C}==3'b011)?7'b0000110:
    (({A,B,C}==3'b100)?7'b1001100:
    (({A,B,C}==3'b101)?7'b0100100:
    (({A,B,C}==3'b110)?7'b0100000:
    (({A,B,C}==3'b111)?7'b0001111:
                        7'b1111111)))))));
                        
    assign A_stat = A;
    assign B_stat = B;
    assign C_stat = C;
endmodule
