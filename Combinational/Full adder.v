module full_adder(input a, b, cin, output sum,carry);
wire w1,w2,w3;

xor(w1,a,b);
xor(sum,w1,cin);

assign w2 = a & b;
assign w3 = w1 & cin;
assign carry = w2 | w3;
endmodule
//TEST BENCH
module tb_full;
reg a,b,cin;
wire sum,carry;

full_adder f1(sum,carry,a,b,cin);

initial begin
a=0;b=0;cin=0;
#10 a=0;b=1;cin=0;
#10 a=1;b=0;cin=0;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $stop;
end
endmodule
