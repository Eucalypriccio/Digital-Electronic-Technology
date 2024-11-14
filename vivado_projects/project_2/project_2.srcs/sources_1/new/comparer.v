`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 08:40:46
// Design Name: 
// Module Name: comparer
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


module comparer(
    input A,
    input B,
    output G,
    output E,
    output S,
    output A_stat,
    output B_stat
    );
    
    wire A_not, B_not, A1, B1;
    not U1(A_not, A);
    not U2(B_not, B);
    and U3(A1, A_not, B);
    and U4(B1, B_not, A);
    nor U5(E, A1, B1);
    assign G = B1;
    assign S = A1;
    assign A_stat = A;
    assign B_stat = B;
endmodule
