`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 22:27:41
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(
    input a,
    input b,
    input sel,
    output out,
    output a_stat,
    output b_stat,
    output sel_stat
    );
    
    wire selnot, a1, b1;
    assign a_stat = a;
    assign b_stat = b;
    assign sel_stat = sel;
    not U1(selnot, sel);
    and U2(a1, a, selnot);
    and U3(b1, b, sel);
    or U4(out, a1, b1);
endmodule
