module Odd_Par_Gen_tb();
  reg [3:0] Data;
  wire  Op;
  integer i;
  
Odd_Par_Gen op1(Data,Op);
  
  initial begin
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",Data,Op);
    for(i=0;i<16;i=i+1)
      begin
      Data=i;
      #10;
      end
  end
   initial begin
     $dumpfile("Gen.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
