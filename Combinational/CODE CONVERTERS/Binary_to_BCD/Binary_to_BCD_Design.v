module Binary_to_BCD (binary,BCD);
  input [15:0] binary;
  output reg [3:0] BCD [3:0];
  //wire [3:0] ones,tens,hunds,thous;

 
  always@(*)begin
    BCD[0]= binary % 10;
    BCD[1]= (binary / 10) % 10;
    BCD[2]= binary / 100;
    BCD[3]=(binary/100)%10;    
 end
  
endmodule
