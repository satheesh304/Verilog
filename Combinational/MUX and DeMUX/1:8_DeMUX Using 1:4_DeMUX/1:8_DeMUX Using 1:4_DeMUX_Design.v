`include "2:1_MUX.v"
`include "4:1_MUX.v"


module MUX(a,s1,s2,s3,out);
output [7:0] out;
input a;
input s1,s2,s3;
wire [1:0] o;
  
  DeMUX_2x1 mux1(a,s1,o[1:0]);
  
  DeMUX_4x1 mux1(o[0],s2,s3,out[3:0]);
  DeMUX_4x1 mux2(o[1],s2,s3,out[7:4]);
  
  
endmodule
