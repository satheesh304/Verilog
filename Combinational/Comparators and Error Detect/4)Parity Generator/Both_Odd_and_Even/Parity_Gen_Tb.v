module OddEven_Par_Gen_tb();
  reg [3:0] Data;
  wire  Ep,Op;
  integer i;
  
  OddEven_Par_Gen oep1(Data,Ep,Op);
  
  initial begin
    $monitor($time,"\tA=%b\t||\tEven_Parity=%b\t||\tOdd_Parity=%b",Data,Ep,Op);
    for(i=0;i<16;i=i+1)
      begin
      Data=i;
      #10;
      end
  end
   initial begin
     $dumpfile("Even-Odd.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
