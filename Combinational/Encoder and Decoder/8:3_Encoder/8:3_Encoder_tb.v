module Encoder_tb();
  reg [7:0] a;
  wire [2:0] o;
  
Encoder e1(a,o);
  
  initial begin
    a=8'b00000001;
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
     #5 a=8'b00000010;
     #5 a=8'b00000100;
     #5 a=8'b00001000;
     #5 a=8'b00010000;
     #5 a=8'b00100000;
     #5 a=8'b01000000;
     #5 a=8'b10000000;
  end
endmodule
