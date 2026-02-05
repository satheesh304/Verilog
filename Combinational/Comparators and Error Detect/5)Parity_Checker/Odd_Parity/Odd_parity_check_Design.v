module Odd_Par_CHECK(Data,Odd_parity, OpCheck);
  input [3:0] Data;
  input Odd_parity;
  output reg  OpCheck ;
  
  assign OpCheck=Odd_parity~^Data[0]~^Data[1]~^Data[2]~^Data[3];
 
endmodule
