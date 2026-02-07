module JK_ff(input J, K, clk, reset, output Q, Qb);
  //Asynchronous reset
  wire Sm, Rm;
  wire Qm, Qmb;

  // Master latch
  nand (Sm, J, Qb, clk);
  nand (Rm, K, Q,  clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);

  // Slave latch with reset
  nand (Q,  Qm,  ~clk, Qb, reset);
  nand (Qb, Qmb, ~clk, Q,  reset);
endmodule
