module Binary_EX3_tb;
  reg [15:0] Binary;
  wire [15:0] Ex3;
  integer i;
  
  Binary_to_Ex3 be1(Binary,Ex3);
  
  initial begin
    $monitor("Time=%0t || Binary= %b or %0d||Excess-3 = %b  %b  %b  %b  ",$time,Binary,Binary,Ex3[15:12],Ex3[11:8],Ex3[7:4],Ex3[3:0]);
    Binary=16'b0;
    for(i=0;i<50;i=i+1) begin
      Binary=Binary+16'b1;
      
      #10;
    end
  end
   initial begin
     $dumpfile("bte3.vcd");
    $dumpvars;
    #1000
    $finish;
   end
    endmodule
