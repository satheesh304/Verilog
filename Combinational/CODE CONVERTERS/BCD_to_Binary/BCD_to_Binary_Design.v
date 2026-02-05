module BCD_to_Binary (BCD,binary);
  input [15:0] BCD;
  output reg [15:0] binary;
  
  //wire [3:0] ones,tens,hunds,thous;
  //try some other logics later

 
  always@(*)begin
    binary=(BCD[3:0]*1)+(BCD[7:4]*10)+(BCD[11:8]*100)+(BCD[15:12]*1000);
   
 end
  
endmodule
