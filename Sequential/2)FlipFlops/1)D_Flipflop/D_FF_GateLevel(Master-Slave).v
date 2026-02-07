module D_ff(input D, clk, output Q, Qb);
  wire Dn;
  wire Sm, Rm;     // master S,R
  wire Qm, Qmb;  
  wire Ss, Rs;    // slave S,R

  not  (Dn, D);
  //Master 
  nand (Sm, D,  clk);
  nand (Rm, Dn, clk);
  nand (Qm,  Sm, Qmb);
  nand (Qmb, Rm, Qm);
  //Slave
  nand (Ss, Qm,  ~clk);
  nand (Rs, Qmb, ~clk);
  nand (Q,  Ss, Qb);
  nand (Qb, Rs, Q);
endmodule
