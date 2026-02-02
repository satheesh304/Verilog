module and_sw(output y, input a, b);
supply1 vdd; supply0 gnd;
wire w;

pmos p1(y,vdd, a);
pmos p2(y,vdd, b);
nmos n1(y, w, a);
nmos n2(w, gnd, b);

endmodule

//TEST_BENCH
module tb_and;
reg a,b;
wire y;

and_sw g1(y,a,b);
initial begin
    a=0;b=0;
    #5 a=0;b=1;
     #5 a=1;b=0;
    #5 a=1;b=1;
    #5 $stop;
end
endmodule
