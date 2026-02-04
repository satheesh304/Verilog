module N_MUX #(parameter N=8,parameter Sel=3)(A,S,out);
  input [N-1:0] A; 
  input [Sel-1:0] S;
   output out;
  
  assign out=A[S];
endmodule
