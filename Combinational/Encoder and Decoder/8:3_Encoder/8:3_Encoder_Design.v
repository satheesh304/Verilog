module Encoder(a,o);
  input [7:0] a;
  output [2:0] o;
  
  assign o = (a[0]) ? 3'b000 :        
    (a[1]) ? 3'b001 :          
    (a[2]) ? 3'b010 :
    (a[3]) ? 3'b011 :
    (a[4]) ? 3'b100 :        
    (a[5]) ? 3'b101 :          
    (a[6]) ? 3'b110 :
    (a[7]) ? 3'b111 :
             3'b000;
           

endmodule
