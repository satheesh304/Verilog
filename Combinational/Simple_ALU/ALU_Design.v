module ALU (a,b,op_sel,out);
  input [3:0] a,b;
  input [3:0] op_sel;
  output reg [7:0] out;
  
  always @(*) begin
    case(op_sel)
       0:out=a+b;    //ADD
       1:out=a-b;    //SUB
       2:out=a*b;    //MULTIPLY
       3:out=a/b;    //Division(Quotient)
       4:out=a%b;    //Division(Remainder)
       5:out=a&b;    //AND 
       6:out=a|b;    //OR
       7:out=a^b;    //EXOR
       8:out={4'b0,a~^b};  //EXNOR
       9:out={4'b0,~a};    //NOT a
       10:out={4'b0,~b};  //NOT b
       11:out=a<<b; //b right shifts a
       12:out=a>>b; //a left shifts b
       default: out=8'bx;
    endcase
  end
endmodule
  
  
