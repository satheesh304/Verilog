module Even_Par_CHECK_tb();
  reg [3:0] Data;
  reg Even_parity;
  wire EPCheck;
  integer i;
  
  Even_Par_CHECK EC1(Data,Even_parity, EPCheck);
  
  initial begin
    
    for(i=0;i<32;i=i+1)
      begin
        {Even_parity,Data}=i;
        if( EPCheck) 
          $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tEPCheck=%b\t There is ERROR in the CODE",Data,Even_parity,EPCheck);
        else
          $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tEPCheck=%b\t There is NO-ERROR in the CODE",Data,Even_parity,EPCheck);
        
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
