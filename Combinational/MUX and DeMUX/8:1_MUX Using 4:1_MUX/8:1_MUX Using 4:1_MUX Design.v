module MUX(a,s1,s2,s3,out);
output out;
input [7:0] a;
input s1,s2,s3;
  
  assign out = (s1==0 && s2==0) ? a[0] :(s1==0 && s2==1) ? a[1] :(s1==1 && s2==0) ? a[2]:a[3];
  //assign out = (s1==0)?((s2==0?a[0]:a[1])):((s2==0?a[2]:a[3]));
endmodule
