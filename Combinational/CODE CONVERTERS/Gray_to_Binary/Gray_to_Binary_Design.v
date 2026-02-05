//Design
module Gray_to_Binary (gray,binary);
  output reg [3:0] binary;
  input [3:0] gray;
  integer i;

 
  always@(*)begin
    binary[3]=gray[3];
   for (i=3;i>0;i=i-1)begin
     binary[i-1]=binary[i]^gray[i-1];
  end
 end
  
endmodule
