module MUX(a,s1,s2,out);
output [3:0] out;
input  a;
input s1,s2;
  
  assign out = (s1==0 && s2==0) ? out[0]=a :(s1==0 && s2==1) ? out[1]=a :(s1==1 && s2==0) ? out[2]=a:out[3]=a;
  //assign out = (s1==0)?((s2==0?out[0]=a:out[1]=a)):((s2==0?out[2]=a:out[3]=a));
endmodule
