module Encoder(a,o);
  input [3:0] a;
  output [1:0] o;
  
  assign o = (a==4'b0001) ? 2'b00 :         //assign o[1]=a[3] |a[2] ;   
             (a==4'b0010) ? 2'b01 :           //assign o[0]=a[2]|a[1];
             (a==4'b0100) ? 2'b10 :
             (a==4'b1000) ? 2'b11 :
                             2'bxx;
 
endmodule
