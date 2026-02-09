module JK_latch_tb;
  wire q, qb;
  reg  d,reset,clk;

  D_latch jk1(d,clk, reset,q,qb);
  
always #5 clk=~clk;
  initial begin
    clk=0;
    $monitor($time,"\td=%b\tQ=%b", d, q);
    reset=1;  
    d=1; 
    #5reset=0;
    #5 d=0;   
    #5 d=0;  
   
    #5 d=1;  
    #5reset=0;
    #5 d=1; 
    #5 d=1;
  end

  initial begin
    $dumpfile("JK_latch.vcd");
    $dumpvars;
    #200 $finish;
  end
endmodule


