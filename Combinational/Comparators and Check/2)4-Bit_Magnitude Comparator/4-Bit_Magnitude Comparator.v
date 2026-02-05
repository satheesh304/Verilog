//Design
module Compare_4bit(a,b,o);
  input [3:0] a,b;
  output reg [1:0] o;
  
  always @(*)
    o=(a>b)?2'b01:
      (a<b)?2'b10:
      (a==b)?2'b11:
       2'b00;
endmodule
