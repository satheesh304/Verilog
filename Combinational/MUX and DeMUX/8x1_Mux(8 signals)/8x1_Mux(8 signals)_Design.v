module mux(a,b,c,d,e,f,g,h,Sel,out);
  input [2:0] a,b,c,d,e,f,g,h;
  input [2:0] Sel;
  output [2:0] out;
  wire [7:0] A [2:0];

   assign A[0]=a;
   assign A[1]=b;
   assign A[2]=c;
   assign A[3]=d;
   assign A[4]=e;
   assign A[5]=f;
   assign A[6]=g;
   assign A[7]=h;
    
  
    assign out=A[Sel];//part select

endmodule
