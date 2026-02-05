module tb_MUX #(parameter N=8,parameter Sel=3);
  reg [N-1:0] a;
  reg [Sel-1:0] s;
  wire out;

  N_MUX n1(a,s,out);

initial begin
 
  $monitor($time,"\tA=%b\t||\ts=%b\t||OUTPUT=%b ",$time,a,s,out);
    for(i=0;i<50;i=i+1)
      begin
      s=i;
      #10;
      end
  end

  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
