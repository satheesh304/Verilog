module JK_latch_rst(input J, K, reset, output Q, Qb);
  wire S, R;

  nand (S, J, Qb);
  nand (R, K, Q);
  nand (Q,  S, Qb, reset);
  nand (Qb, R, Q,  reset);
endmodule

