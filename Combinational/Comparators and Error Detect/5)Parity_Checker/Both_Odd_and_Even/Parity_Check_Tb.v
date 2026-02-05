module Even_Par_CHECK_tb();
  reg [3:0] Data;
  reg Even_parity,Odd_Parity;
  wire EpCheck,OpCheck;
  integer i;
  
  OddEven_Par_CHECK oec1(Data,Even_parity,Odd_Parity, EpCheck,OpCheck);
  
  initial begin
    
    for(i=0;i<32;i=i+1)
      begin
        {Even_parity,Data}=i;
         Odd_Parity=~Even_parity;
         #10;
        if( EpCheck&OpCheck)  $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tOdd_Parity=%b\t||\tEPCheck=%b\t||\tOPCheck=%b\t There is ERROR in the CODE",Data,Even_parity,Odd_Parity,EpCheck,OpCheck);
        else $display($time,"\tA=%b\t||\tEven_Parity=%b\t||\tOdd_Parity=%b\t||\tEPCheck=%b\t||\tOPCheck=%b\t There is NO-ERROR in the CODE",Data,Even_parity,Odd_Parity,EpCheck,OpCheck);

      #10;
      end
  end
   initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
