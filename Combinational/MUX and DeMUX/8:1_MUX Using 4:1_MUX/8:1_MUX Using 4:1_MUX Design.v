`include 2:1_MUX.v
`include 4:1_MUX.v


module MUX(a,s1,s2,s3,out);
output out;
input [7:0] a;
input s1,s2,s3;
 wire [1:0] o;

  MUX_4X1 mux1(a[3:0],s2,s3,o[0]);
  MUX_4X1 mux2(a[7:4],s2,s3,o[1]);
  
  MUX_2X1 mux3(o,s1,out);
endmodule
