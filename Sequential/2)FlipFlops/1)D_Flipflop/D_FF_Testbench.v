module Dff_TB();
  reg d, clk, rst;
  wire q;

  d_ff uut (d, clk, rst, q);
  
  always #5 clk = ~clk;
  initial begin
    clk = 0;
    d   = 0;
    rst = 1;
    forever #10 d = ~d;
    #10 rst = 0;
    #10 rst=1;
    #5 rst=0;
    #5 rst=1;
     
  end

  initial begin
    $monitor($time,
      "\tD=%b\tClock=%b\tReset=%b\tQ=%b", d, clk, rst, q);
    #2000 $finish;
  end

endmodule

