module mux(a,b,c,d,e,f,g,h,Sel,out);
  input [2:0] a,b,c,d,e,f,g,h;
  input [2:0] Sel;
  output [2:0] out;
  wire [7:0] A [2:0];

  always @(*) begin
    A[0]=a;
    A[1]=b;
    A[2]=c;
    A[3]=d;
    A[4]=e;
    A[5]=f;
    A[6]=g;
    A[7]=h; 
  end
  
    assign out=A[Sel];//part select

endmodule
