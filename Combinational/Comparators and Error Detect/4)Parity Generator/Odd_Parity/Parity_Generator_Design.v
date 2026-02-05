module Odd_Par_Gen(Data,Op);
  input [3:0] Data;
  output reg Op ;
  
  assign Op=Data[0]~^Data[1]~^Data[2]~^Data[3];
 
endmodule
