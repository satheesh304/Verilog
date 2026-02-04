module tb_MUX;
reg [3:0] a;
reg s1,s2;
wire out;

   MUX m1 (a,s1,s2,out);
  
initial begin
  a=4'b1100; s1=0; s2=0;
 $monitor("TIME=%t ||  A=%b ||  s1=%b  s2=%b || output=%b",$time,a,s1,s2,out);
  #10 a=4'b1100; s1=1; s2=0;
  #10 a=4'b1100; s1=0; s2=1;
  $stop #10;
  #10 a=4'b1100; s1=1; s2=1;
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #100
    $finish;
  end
endmodule
