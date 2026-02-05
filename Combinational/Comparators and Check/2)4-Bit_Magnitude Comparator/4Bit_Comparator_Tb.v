module equality_Tb;
  reg [3:0]a,b;
  wire [1:0]o;
  integer i,j;
  Compare_4bit c1(a,b,o);
//Testbench  
  initial begin
   
    for(i=0;i<16;i+=1)begin
      for(j=0;j<16;j+=1)begin
        a=i;
        b=j;
        #10;
        if (o==2'b01)
          $display("Time=%0t ||a=%b  b=%b || a is Greater than b",$time,a,b);
        else if(o==2'b10)
          $display("Time=%0t ||a=%b  b=%b || a is Lesser than b ",$time,a,b);
        else if(o==2'b11)
          $display("Time=%0t ||a=%b  b=%b || a and b are equal ",$time,a,b);
        else
          $display("Time=%0t ||a=%b  b=%b || invalid inputs ",$time,a,b);
        
      end
    end
  end
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
    
