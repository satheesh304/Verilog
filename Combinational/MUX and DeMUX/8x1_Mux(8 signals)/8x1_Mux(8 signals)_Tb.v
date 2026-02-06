module tb_MUX;
  reg [2:0] a,b,c,d,e,f,g,h;
  reg [2:0] s;
  wire [2:0] out;

  mux m1 (a,b,c,d,e,f,g,h,s,out);
  
initial begin
  a=3'b000;b=3'b110;c=3'b100;d=3'b111;e=3'b101;f=3'b001;g=3'b011;  h=3'b010;
  s=3'b000;
  $monitor("TIME=%0t ||   s=%b || output=%b",$time,s,out);

  #10 s=3'b001;
  #10 s=3'b010;
  #10 s=3'b011;
  #10 s=3'b100;
  #10 s=3'b101;
  #10 s=3'b110;
  #10 s=3'b111;
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
