module mux(A,Sel,out);
  input [7:0] A;
  input [2:0] Sel;
  output out;

  assign out=A[Sel];

endmodule
