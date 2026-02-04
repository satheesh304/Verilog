module DeMUX_4x1 (a,s1,s2,out);
output [3:0] out;
input  a;
input s1,s2;
  
  assign out[0] =(s1==0 && s2==0) ? a:1'b0;
  assign out[1] =(s1==0 && s2==1) ? a:1'b0;
  assign out[2] =(s1==1 && s2==0) ? a:1'b0;
  assign out[3] =(s1==1 && s2==1) ? a:1'b0;
 
endmodule
