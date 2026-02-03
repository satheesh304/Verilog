module full_adder(a, b, cin,sum,carry);
output sum, carry;
input a, b, cin;

assign sum   = a ^ b ^ cin;
assign carry = (a & b) | (b & cin) | (a & cin);

endmodule

module add_sub(a, b,mode,sum,carry);
output [3:0] sum;
output carry;
input [3:0] a,b;
input mode;

  wire [3:0] new_b;
  wire c1,c2,c3;

assign new_b = b ^ {4{mode}};
  
  full_adder f0(a[0],new_b[0],mode,sum[0],c1);
  full_adder f1(a[1],new_b[1],c1,sum[1],c2);
  full_adder f2(a[2],new_b[2],c2,sum[2],c3);
  full_adder f3(a[3],new_b[3],c3,sum[3],carry);
endmodule


