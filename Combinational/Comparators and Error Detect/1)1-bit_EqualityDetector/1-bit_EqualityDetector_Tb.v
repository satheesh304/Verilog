module equality_Tb;
  reg a,b;
  wire o;
  integer i,j;
  Equality e1( a,b,o);
  
  initial begin
   
    for(i=0;i<2;i+=1)begin
      for(j=0;j<2;j+=1)begin
        a=i;
        b=j;
        #10;
        if (o)
          $display("Time=%0t ||a=%b  b=%b || a and b are equal",$time,a,b);
        else
          $display("Time=%0t ||a=%b  b=%b || a and b are not equal",$time,a,b);
        
      end
    end
  end
  initial begin
    $dumpfile("equality.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
    
