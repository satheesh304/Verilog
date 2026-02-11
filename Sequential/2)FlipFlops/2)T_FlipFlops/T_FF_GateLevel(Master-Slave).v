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
  nand (Ss, Qm, ~clk);
  nand (Rs, Qmb, ~clk);
  nand (Q,Ss, Qb, ~reset);
  nand (Qb,Rs, Q);
endmodule
