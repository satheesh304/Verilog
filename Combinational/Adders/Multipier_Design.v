module MUL(a,b,o);
  input wire [3:0] a,b;
  output wire [7:0] o;
  wire [7:0] O1,O2,O3,O4;
  
  assign O1= b[0]? a<<0:8'b0;
  assign O2= b[1]? a<<1:8'b0;
  assign O3= b[2]? a<<2:8'b0;
  assign O4= b[3]? a<<3:8'b0;
  
  assign o=O1+O2+O3+O4;
endmodule
  
