module and_sw(output y, input a, b);
supply1 vdd; supply0 gnd;
wire w,y1;

    pmos p1(y1,vdd, a);
    pmos p2(y1,vdd, b);
    nmos n1(y1, w, a);
    nmos n2(w, gnd, b);
    
    pmos p3(y,vdd, y1);
    nmos n3(y, gnd, y1);

endmodule



//TEST_BENCH
module tb_and;
reg a,b;
wire y;

and_sw g1(y,a,b);
initial begin
    a=0;b=0;
  $monitor($time,"\tA=%b\t B=%b||\tOUTPUT=%b",a,b,y);
    #5 a=0;b=1;
     #5 a=1;b=0;
    #5 a=1;b=1;
    #5 $stop;
end
endmodule
