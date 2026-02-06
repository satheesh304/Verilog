module Odd_Par_CHECK_tb();
  reg [3:0] Data;
  reg Odd_parity;
  wire OPCheck;
  integer i;
  
  Odd_Par_CHECK  Oc1(Data,Odd_parity, OPCheck);
  
  initial begin
    
    for(i=0;i<32;i=i+1)
      begin
        {Odd_parity,Data}=i;
        if( OPCheck) 
          $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tEPCheck=%b\t There is ERROR in the CODE",Data,Odd_parity,OPCheck);
        else
          $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tEPCheck=%b\t There is NO-ERROR in the CODE",Data,Odd_parity,OPCheck);
        
      #10;
      end
  end
   initial begin
     $dumpfile("check.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
