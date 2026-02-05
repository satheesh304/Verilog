module Binary_to_BCD (binary,bcd);
  input [15:0] binary; 
  output reg [15:0] bcd;
  //wire [3:0] ones,tens,hunds,thous;

 
  always@(*)begin
  bcd[3:0]   = binary % 10;
  bcd[7:4]   = (binary / 10)   % 10;
  bcd[11:8]  = (binary / 100)  % 10;
  bcd[15:12] = (binary / 1000) % 10;

 end
  
endmodule

