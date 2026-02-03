module half_sub(diff, borrow, a, b);
output diff, borrow;
input a, b;
assign diff=a^b;
assign borrow= a & ~b;
endmodule


