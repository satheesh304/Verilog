module OddEven_Par_Gen(Data,Ep,Op);
  input [3:0] Data;
  output reg Ep,Op ;
  
  assign Ep=Data[0]^Data[1]^Data[2]^Data[3];
  assign Op=~Ep;
 
endmodule
