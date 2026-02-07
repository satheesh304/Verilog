module SR_ff(input S, R, clk, reset, output Q, Qb);
  wire Sg, Rg;
//Asynchronous reset
  nand (Sg, S, clk);
  nand (Rg, R, clk);

  nand (Q,  Sg, Qb, reset);
  nand (Qb, Rg, Q,  reset);
endmodule
