module Even_Par_Gen(Data,Ep);
  input [3:0] Data;
  output reg Ep ;
  
  assign Ep=Data[0]^Data[1]^Data[2]^Data[3];
 
endmodule
