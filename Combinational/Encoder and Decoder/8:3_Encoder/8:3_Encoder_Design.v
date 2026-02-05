module Encoder(a,o);
  input [7:0] a;
  output [2:0] o;
  
  assign o = (a == 4'b00000001) ? 3'b000 :
    (a == 8'b00000010)  ? 3'b001 :
    (a == 8'b00000100)  ? 3'b010 :
    (a == 8'b00001000) ? 3'b011 :
    (a == 8'b00010000) ? 3'b100 :
    (a == 8'b00100000)  ? 3'b101 :
    (a == 8'b01000000)  ? 3'b110 :
    (a == 8'b10000000) ? 3'b111 :
    3'bxxx; //for invalid inputs(all ip 0 or more than 1)
           

endmodule
