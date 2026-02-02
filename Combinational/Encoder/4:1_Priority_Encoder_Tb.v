module Priority_Encoder_tb();
  reg [3:0] a;
  wire [1:0] o;
  
Priority_Encoder e1(a,o);
  
  initial begin
    a=4'b0001;
    $monitor($time,"\tA=%b\t||\tOUTPUT=%b",a,o);
   #5 a=4'b0110;
   #5 a=4'b0011;
   
   #5 a=4'b1100;
  end
endmodule
