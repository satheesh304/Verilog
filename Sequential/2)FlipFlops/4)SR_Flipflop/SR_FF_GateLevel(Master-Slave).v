module SR_ff_rst(input S, R, clk, reset, output Q, Qb);
  //Asynchonouos reset
  wire Sm, Rm;
  wire Qm, Qmb;
//master
  nand (Sm, S, clk);
  nand (Rm, R, clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);
//Slave
  nand (Q,  Qm,  ~clk, Qb, reset);
  nand (Qb, Qmb, ~clk, Q,  reset);
endmodule
