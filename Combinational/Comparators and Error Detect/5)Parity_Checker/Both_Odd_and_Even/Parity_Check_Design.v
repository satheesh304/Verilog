module OddEven_Par_CHECK(Data,Even_parity,Odd_Parity, EpCheck,OpCheck);
  input [3:0] Data;
  input Even_parity,Odd_Parity;
  output EpCheck,OpCheck ;
  
  assign EpCheck=Even_parity^Data[0]^Data[1]^Data[2]^Data[3];
  assign OpCheck=~(Odd_Parity^Data[0]^Data[1]^Data[2]^Data[3]);
 
endmodule

