module T_latch(input T,clk,reset,output reg q);
  always @(clk or d or reset) begin
    if (reset)
      q<=0;
    if(clk)
      q<=T?~q:q;
    else 
      q<=q;
  end
endmodule
