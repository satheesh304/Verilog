module Compare_4bit_bitwise(a,b,o);
  input [3:0] a,b;
  output reg [1:0] o;
  
  always @(*)
    o = (a[3]>b[3])?2'b01 :
        (a[3]<b[3])?2'b10 :
        (a[2]>b[2])?2'b01 :
        (a[2]<b[2])?2'b10 :
        (a[1]>b[1])?2'b01 :
        (a[1]<b[1])?2'b10 :
        (a[0]>b[0])?2'b01 :
        (a[0]<b[0])?2'b10 :
                     2'b11;     
               
endmodule
