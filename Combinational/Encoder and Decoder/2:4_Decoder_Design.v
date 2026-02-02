module Decoder(a,o);
  input [1:0] a;
  output [3:0] o;

  assign o=(~a[0]*~a[1])+(a[0]*~a[1])+(~a[0]*a[1])+(a[0]*a[1]);
  //assign o= a[1]?(a[0]?o[3]=1:o[2]=1):(a[0]?o[1]=1:o[0]=1)
endmodule
