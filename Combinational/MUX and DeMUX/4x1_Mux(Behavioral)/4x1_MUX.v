module mux(a,s1,s2,out);
  input [3:0] a;
  input s1,s2;
  output out;

  always @(*) begin
    //out = (s1==0 && s2==0) ? a[0] :(s1==0 && s2==1) ? a[1] :(s1==1 && s2==0) ? a[2]:a[3];
    case ({s1,s2})
    2'b00: y = a[0];
    2'b01: y = a[1];
    2'b10: y = a[2];
    2'b11: y = a[3];
    default: y = 1'b0;
  end

endmodule
