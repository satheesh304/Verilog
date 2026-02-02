//design file
module not_sw(y, a);
output y;
input a;
supply1 vdd; supply0 gnd;
pmos p1(y, vdd, a);
nmos n1(y, gnd, a);
endmodule

//testbench
module tb_not;
reg a;
wire y;
not_sw g1(y,a);
initial begin
a=0;
#1 a=1;
#1 a=0;
#1 $stop;
end
endmodule
