module Decoder_Tb();
  reg [1:0] a;
  wire [3:0] o;
Decoder d1(a,o);
  
  initial begin
    a=2'b01;
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
   #5 a=2'b10;
   #5 a=2'b00;
   #5 a=2'b11;
  end
endmodule
