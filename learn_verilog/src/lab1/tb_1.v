`timescale 10ns/1ns
module testbench();
wire Rec;
reg SOut1, SOut2, SOut3;
mux2to1_GL u1(SOut1, SOut2, SOut3, Rec);

initial begin
    SOut1 = 0; SOut2 = 0; SOut3 = 0; // select a(SOut1)
#6  SOut1 = 0; SOut2 = 0; SOut3 = 1; // select b(SOut2)
#6  SOut1 = 1; SOut2 = 0; SOut3 = 0;
#6  SOut1 = 1; SOut2 = 0; SOut3 = 1;
#6  SOut1 = 0; SOut2 = 1; SOut3 = 0;
#6  SOut1 = 0; SOut2 = 1; SOut3 = 1;
#6  SOut1 = 1; SOut2 = 1; SOut3 = 0;
#6  SOut1 = 1; SOut2 = 1; SOut3 = 1;
#6  $finish;

end

initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, testbench);
end

endmodule