module half_adder(sum, carry, a, b);
output sum, carry;
input a, b;
xor(sum, a, b);
assign carry = a & b;
endmodule
