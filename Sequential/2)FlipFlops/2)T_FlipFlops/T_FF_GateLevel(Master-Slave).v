module T_ff(input T, clk, reset, output Q, Qb);
  wire S, R;
//Asynchronous reset
  nand (S, T, Qb, clk);
  nand (R, T, Q,  clk);

  nand (Q,  S, Qb, reset);
  nand (Qb, R, Q,  reset);
endmodule
