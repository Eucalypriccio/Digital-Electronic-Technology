`timescale 10ns/1ns
module testbench();
reg [3:0] A_t, B_t;
reg Cin_t;
wire [3:0] Sum_t;
wire Cout_t;
binary_adder u1(A_t, B_t, Cin_t, Sum_t, Cout_t);

initial begin
    A_t = 4'b0001; B_t = 4'b0001; Cin_t = 0; // 0010
#10 A_t = 4'b0100; B_t = 4'b0010; Cin_t = 0; // 0110 
#10 A_t = 4'b1010; B_t = 4'b0101; Cin_t = 0; // 1111
#10 A_t = 4'b1001; B_t = 4'b1011; Cin_t = 1; // 10100
#10 A_t = 4'b1111; B_t = 4'b0001; Cin_t = 1; // 10000
#10 $finish;
end

initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, testbench);
end

endmodule