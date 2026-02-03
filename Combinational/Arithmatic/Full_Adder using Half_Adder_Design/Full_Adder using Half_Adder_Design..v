~include  Half_adder.v
module FA_U_HA(input a,b,cin,output sum,carry);

wire s1,c1,c2;
  
  half_adder ha1(s1,c1, a, b);
  half_adder ha2(sum, c2, s1, cin);
  or (carry,c1,c2);

endmodule


