module Encoder(a,o);
  input [3:0] a;
  output [1:0] o;
  
  assign o = (a[0]) ? 2'b00 :         //assign o[1]=a[3] |a[2] ;   
           (a[1]) ? 2'b01 :           //assign o[0]=a[2]|a[1];
           (a[2]) ? 2'b10 :
           (a[3]) ? 2'b11 :
            2'b00;

endmodule
