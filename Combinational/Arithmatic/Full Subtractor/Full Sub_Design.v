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


