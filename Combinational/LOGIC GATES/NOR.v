// DESIGN
module nor_sw(o, a, b);
output o;
input a, b;
supply1 vdd; supply0 gnd;

  pmos p1(o, vdd, a);
  pmos p2(o, vdd, b);
  nmos n1(o, gnd, a);
  nmos n2(o, gnd, b);
endmodule

//testbench
module tb_nor;
reg a,b;
wire o;

  nor_sw g1(o,a,b);
  initial begin
  a=0;b=0;
  #10 a=0;b=1;
  #10 a=1;b=0;
  #10 a=1;b=1;
  #10 $stop;
end
endmodule
