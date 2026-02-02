module xor_sw(o, a, b);
  output o;
  input a, b;
  wire na, nb;

not_sw n1(na, a);
not_sw n2(nb, b);

assign o = (a & nb) | (na & b);
endmodule

//testbench
module tb_xor;
reg a,b;
wire o;

  xor_sw g1(o,a,b);
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $stop;
end
endmodule
