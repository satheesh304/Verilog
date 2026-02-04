module Decoder_tb();
  reg [2:0] a;
  wire [7:0] o;
  
Decoder d1(a,o);
  
  initial begin
    a=3'b000;
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
     #5 a=3'b001;
     #5 a=3'b010;
     #5 a=3'b011;
     #5 a=3'b100;
     #5 a=3'b101;
     #5 a=3'b110;
     #5 a=3'b111;
  end
endmodule
