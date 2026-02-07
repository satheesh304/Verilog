module JK_latch_TB();
  wire q,qb;
  reg  J,K;

  SR_latch sr1(J,K,q,qb);

  initial begin
    $monitor($time,"\tJ=%b\t,K=%b\t,Reset=%b\t,Q=%b",J,K,rst,q);
    J=0; K=0;
    #5 J=1; K=1;
    #5 J=0; K=0;
    #5 J=1; K=1;
  end
  initial begin
    $dumpfile("JK_latch.vcd");
    $dumpvars;
    #200; $finish;
endmodule
