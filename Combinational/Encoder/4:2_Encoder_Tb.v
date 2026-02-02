module Encoder_tb();
  reg [3:0] a;
  wire [1:0] o;
  
Encoder e1(a,o);
  
  initial begin
    a=4'b0001;
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
   #5 a=4'b0010;
   #5 a=4'b0100;
   #5 a=4'b1000;
  end
endmodule
