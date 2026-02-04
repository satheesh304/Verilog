module Binary_to_Gray (binary,gray);
  input [3:0] binary;
  output reg [3:0] gray;
  integer i;

 
  always@(*)begin
    gray[3]=binary[3];
   for (i=3;i>0;i=i-1)begin
    gray[i-1]=binary[i]^binary[i-1];
  end
 end
  
endmodule
