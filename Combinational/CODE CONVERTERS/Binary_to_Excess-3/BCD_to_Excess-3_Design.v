//Design
`include "Binary_to_BCD.v"
module Binary_to_Ex3(Binary,Ex3);
  input [15:0] Binary;
  output reg [15:0] Ex3;
  wire [15:0] BCD;
  
  Binary_to_BCD bB(Binary,BCD);
  
  always @(*)begin
    Ex3[3:0]=BCD[3:0]+ 4'b 0011;
    Ex3[7:4]=BCD[7:4]+ 4'b 0011;
    Ex3[11:8]=BCD[11:8]+ 4'b 0011;
    Ex3[15:12]=BCD[15:12]+ 4'b 0011;
    
  end
endmodule
      
