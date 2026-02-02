//Design 
module or_sw(input a, b, output y);
supply1 vdd; 
supply0 gnd;
wire w,y1;

  pmos p1(w, vdd, a);
  pmos p2(y1, w, b);
  nmos n1(y1, gnd, a);
  nmos n2(y1, gnd, b);

    pmos p3(y,vdd, y1);
    nmos n3(y, gnd, y1);

  
endmodule

//TEST_BENCH
module tb_and;
reg a,b;
wire y;

  or_sw g1(a,b,y);
initial begin
    a=0;b=0;
  $monitor($time,"\tA=%b\t B=%b||\tOUTPUT=%b",a,b,y);
    #5 a=0;b=1;
     #5 a=1;b=0;
    #5 a=1;b=1;
    #5 $stop;
end
endmodule
