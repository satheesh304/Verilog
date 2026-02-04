module tb_MUX #(parameter N=8,parameter Sel=3);
  reg [N-1:0] a;
  reg [Sel-1:0] s;
  wire out;

  N_MUX n1(a,s,out);
  
initial begin
  a=8'b11001101;  s=3'b000;
  $monitor("TIME=%0t ||  A=%b ||  s=%b || output=%b",$time,a,s,out);
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
