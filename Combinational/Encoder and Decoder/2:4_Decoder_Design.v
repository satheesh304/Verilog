module Decoder(a,o);
  input [1:0] a;
  output [3:0] o;

  //assign o=(~a[0]*~a[1])+(a[0]*~a[1])+(~a[0]*a[1])+(a[0]*a[1]);
  assign o= a[1]?(a[0]?4'b1000:4'b0100):(a[0]?4'b0010:4'b0001);
endmodule
