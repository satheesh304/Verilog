module Binary_to_Gray_Tb;
  reg [3:0] a;
  wire [3:0] o;
  integer i;
  
 Binary_to_Gray b1(a,o);
  
  initial begin
 
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
    for(i=0;i<16;i=i+1)
      begin
      a=i;
      #10;
      end
  end
   initial begin
     $dumpfile("btg.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
