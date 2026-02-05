module Binary_to_BCD (binary,BCD);
  input [15:0] binary; 
  output reg [3:0] BCD [3:0];  //[15:0] BCD;
  //wire [3:0] ones,tens,hunds,thous;

 
  always@(*)begin
    BCD[0]= binary%10;               //BCD[3:0]= binary % 10;
    BCD[1]= (binary/10)%10;          //BCD[7:4]= (binary / 10) % 10;
    BCD[2]= (binary/100)%10;         //BCD[11:8]= (binary / 100)%10;
    BCD[3]=(binary/1000)%10;         //BCD[15:12]=(binary/1000)%10; 
    
 end
  
endmodule
