module T_ff(input T, clk, reset, output Q, Qb);
  //asynchronous reset
  wire Sm, Rm;
  wire Ss, Rs;
  wire Qm, Qmb;
//master
  nand (Sm, T, Qb, clk);
  nand (Rm, T, Q,  clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);
  
//slave latch
  nand (Q,  Ss, Qm, ~clk);
  nand (Qb, Rs, Qmb, ~clk);
  nand (Q,  Qm, Qb, reset);
  nand (Qb, Qmb, Q,  reset);
endmodule
