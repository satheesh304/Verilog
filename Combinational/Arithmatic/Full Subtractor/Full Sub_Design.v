module full_sub(input a, b, cin, output diff, borrow);
wire w1,w2,w3;

  xor(w1,a,b);      //assign sum=a^b^c;
  xor(sum,w1,cin);
  
  and (w1,~a,b);     //assign borrow =(~a&b)|(b&cin)|(~a&cin);
  and (w2,b,cin);
  and (w3,~a,cin);
  assign borrow=w1|w2|w3;
;
endmodule

//TEST BENCH
module tb_full_sub;
reg a,b,cin;
wire diff, borrow;

  full_sub f1(a,b,cin,diff,borrow);

initial begin
a=0;b=0;cin=0;
#10 a=0;b=1;cin=0;
#10 a=1;b=0;cin=0;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $stop;
end
endmodule
