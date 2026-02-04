
module tb_MUX_4x1;
reg  a;
reg s1,s2;
wire [3:0] out;

   MUX_4x1 m1 (a,s1,s2,out);
  
initial begin
  a=1'b1; s1=0; s2=0;
 $monitor("TIME=%t ||  A=%b ||  s1=%b  s2=%b || output=%b",$time,a,s1,s2,out);
  #10 ; s1=0; s2=1;
  #10  s1=1; s2=0;
  #10  s1=1; s2=1;
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #100
    $finish;
  end
endmodule

