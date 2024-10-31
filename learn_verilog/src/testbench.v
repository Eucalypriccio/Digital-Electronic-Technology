`timescale 10ns/1ns
module testbench();
reg SOut;
wire Rec;
mymod u1(SOut, Rec);

initial SOut = 0;
initial forever #2 SOut=~SOut;
initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, testbench);
end
initial begin
    #12 $finish;
end

endmodule