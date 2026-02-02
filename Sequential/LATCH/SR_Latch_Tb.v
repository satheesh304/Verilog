module SR_latch_TB();
  wire q,qb;
  reg  set, rst;

  SR_latch sr1(~set,~rst,q,qb);

  initial begin
    $monitor($time,"\tSet=%b\t,Reset=%b\t,Q=%b",set,rst,q);
    set=0; rst=0;
    #5 set=1; rst=1;
    #5 set=0; rst=0;
    #5 set=1; rst=1;
  end
endmodule
