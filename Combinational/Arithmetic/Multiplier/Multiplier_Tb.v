module Multiplier_tb();
  reg [3:0] a,b;
  wire [7:0] o;
  
 MUL m1(a,b,o);
  
  initial begin
    a=4'b1001; b=4'b1001;
    $monitor($time,"\tA=%b\tB=%b\t||\tOUTPUT=%b",a,b,o);
   #5 a=4'b0001; b=4'b1001;
   #5 a=4'b1111; b=4'b1111;
   #5 a=4'b1101; b=4'b1011;
  end
endmodule
    
