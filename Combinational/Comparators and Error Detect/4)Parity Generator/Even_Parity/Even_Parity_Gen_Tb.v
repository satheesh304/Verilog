module Even_Par_Gen_tb();
  reg [3:0] Data;
  wire  Ep;
  integer i;
  
  Even_Par_Gen op1(Data,Ep);
  
  initial begin
    $monitor($time,"\tA=%b\t||\tEven_Parity=%b",Data,Ep);
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
