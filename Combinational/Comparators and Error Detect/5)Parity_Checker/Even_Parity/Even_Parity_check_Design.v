module Even_Par_CHECK(Data,Even_parity, EPCheck);
  input [3:0] Data;
  input Even_parity;
  output reg  EPCheck ;
  
  assign EPCheck=Even_parity^Data[0]^Data[1]^Data[2]^Data[3];
 
endmodule
