module MUX_2X1 (a,s1,out);
output out;
input [1:0] a;
input s1;
  
  assign out = (s1==0) ? a[0] :a[1];
  //assign out = (s1==0)?((s2==0?a[0]:a[1])):((s2==0?a[2]:a[3]));
endmodule
