//Test Bench
module Gray_to_Binary_Tb;
  reg [3:0] a;
  wire [3:0] o;
  integer i;
  
 Gray_to_Binary b1(a,o);
  
  initial begin
 
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
    for(i=0;i<16;i=i+1)
      begin
      a=i;
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
