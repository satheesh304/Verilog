module Decoder(a,o);
  input [2:0] a;
  output [7:0] o;
// assign o=8'b00000001<<a;
  assign o[0]=(~a[2]&~a[1]&~a[0]);
  assign o[1]= (~a[2]&~a[1]&a[0]);
  assign o[2]=(~a[2]&a[1]&~a[0]);
  assign o[3]=(~a[2]&a[1]&a[0]);
  assign o[4]=(a[2]&~a[1]&~a[0]);
  assign o[5]=(a[2]&~a[1]&a[0]);
  assign o[6]=(a[2]&a[1]&~a[0]);
  assign o[7]=(a[2]&a[1]&a[0]);
  
endmodule
