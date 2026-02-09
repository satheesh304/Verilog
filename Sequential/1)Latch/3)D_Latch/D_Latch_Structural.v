module D_latch(input D,clk, reset, output Q, Qb);
  wire S, R,Dn;
  not(Dn,D);
  nand (S, D, Qb,clk);
  nand (R, Dn, Q,clk);
  nand (Q,  S, Qb, reset);
  nand (Qb, R, Q,  reset);
endmodule
