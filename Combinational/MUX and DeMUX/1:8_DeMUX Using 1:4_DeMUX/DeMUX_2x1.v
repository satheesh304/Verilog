module DeMUX_2x1 (a,s1,s2,out);
  output [1:0] out;
input  a;
input s1,s2;
  
  assign out[0] =(s1==0 && s2==0) ? a:1'b0;
  assign out[1] =(s1==0 && s2==1) ? a:1'b0;
endmodule
