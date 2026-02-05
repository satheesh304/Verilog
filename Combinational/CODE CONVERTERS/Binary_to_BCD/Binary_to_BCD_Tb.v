module Binary_to_BCD_Tb;
  reg [15:0] a;
  wire [3:0] o [3:0];
  integer i;
  
 Binary_to_BCD b1(a,o);
  
  initial begin
 
    //$monitor($time,"\tA=%b\t||\tOUTPUT=%b  %b  %b  %b",a,o[3],o[2],o[1],o[0]);
    for(i=0;i<50;i=i+1)
      begin
         $display($time,"\tA=%b\t||\tOUTPUT=%b  %b  %b  %b",a,o[3],o[2],o[1],o[0]);
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
