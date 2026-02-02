//Design 
module or_sw(input a, b, output y);
supply1 vdd; 
supply0 gnd;
wire w;

pmos p1(y, vdd, a);
pmos p2(y, vdd, b);
nmos n1(w, gnd, a);
nmos n2(y, w, b);
endmodule

//test bench
module tb_or;
reg a,b;
wire y;

or_sw g1(y,a,b);
initial begin
a=0;b=0;
#100a=0;b=1;
#100a=1;b=0;
#100 a=1;b=1;
#100 $stop;
end
endmodule
