module T_ff(input T, clk, reset, output Q, Qb);
  //asynchronous reset
  wire Sm, Rm;
  wire Qm, Qmb;
//master
  nand (Sm, T, Qb, clk);
  nand (Rm, T, Q,  clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);
//slave
  nand (Q,  Qm,  ~clk, Qb, reset);
  nand (Qb, Qmb, ~clk, Q,  reset);
endmodule
