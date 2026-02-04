
module tb_MUX;
  reg [7:0] a;
reg s1,s2,s3;
wire out;

  MUX m1 (a,s1,s2,s3,out);
  
initial begin
  a=8'b11001101; s1=0; s2=0; s3=0;
  $monitor("TIME=%t ||  A=%b ||  s1=%b  s2=%b s3=%b|| output=%b",$time,a,s1,s2,s3,out);
 
 
  #10 s1=0; s2=0; s3=1;
  #10 s1=0; s2=1; s3=0;
  #10 s1=0; s2=1; s3=1;
  #10 s1=1; s2=0; s3=0;
  #10 s1=1; s2=0; s3=1;
  #10 s1=1; s2=1; s3=0;
  #10 s1=1; s2=1; s3=1;
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
