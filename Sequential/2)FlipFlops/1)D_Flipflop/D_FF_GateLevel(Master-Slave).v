module D_ff_rst(input D, clk, reset, output Q, Qb);
  wire Dn;
  wire Sm, Rm;
  wire Qm, Qmb;
  wire Ss, Rs;
//Asynchronous rest
  not  (Dn, D);

  // Master
  nand (Sm, D,  clk);
  nand (Rm, Dn, clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);

  // Slave
  nand (Ss, Qm,  ~clk);
  nand (Rs, Qmb, ~clk);

  //Output
  nand (Q,  Ss, Qb, reset);
  nand (Qb, Rs, Q,  reset);
endmodule
