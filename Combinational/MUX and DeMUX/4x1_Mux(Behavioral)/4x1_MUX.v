
endmodulemodule mux(a,s1,s2,out);
  input [3:0] a;
  input s1,s2;
  output out;

  always @(*) begin
    out = (s1==0 && s2==0) ? a[0] :(s1==0 && s2==1) ? a[1] :(s1==1 && s2==0) ? a[2]:a[3];
  end

endmodule
