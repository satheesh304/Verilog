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
  nand (Ss, Qm, ~clk);
  nand (Rs, Qmb, ~clk);
  nand (Q, Ss, Qb, reset);
  nand (Qb, Rs, Q,  reset);
endmodule
