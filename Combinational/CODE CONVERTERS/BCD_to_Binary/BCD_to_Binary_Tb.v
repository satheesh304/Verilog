module Binary_to_BCD_Tb;
  
  reg [15:0] a;
  wire [15:0] o;
  integer i;
  
 BCD_to_Binary b1(a,o);
  
  initial begin
    $monitor($time,"\tA=%b  %b  %b  %b\t||\tOUTPUT=%b",a[15:12],a[11:8],a[7:4],a[3:0],o);
    
    for(i=0;i<50;i=i+1)
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
