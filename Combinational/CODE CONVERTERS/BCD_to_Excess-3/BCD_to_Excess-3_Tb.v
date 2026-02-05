module BCD_EX3_tb;
  reg [15:0] BCD;
  wire [15:0] Ex3;
  integer i;
  
  BCD_to_Ex3 be1(BCD,Ex3);
  
  initial begin
    $monitor("Time=%0t || BCD= %b  %b  %b  %b  ||Excess-3 = %b  %b  %b  %b  ",$time,BCD[15:12],BCD[11:8],BCD[7:4],BCD[3:0],Ex3[15:12],Ex3[11:8],Ex3[7:4],Ex3[3:0]);
    BCD=16'b0;
    for(i=0;i<50;i=i+1) begin
      BCD=BCD+16'b1;
      
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
