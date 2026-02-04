module DeMUX_2x1 (a,s,out);
output [1:0] out;
input  a;
input s;
  
  assign out[0] =(s==0) ? a:1'b0;
  assign out[1] =(s==1) ? a:1'b0;
endmodule
