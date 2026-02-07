module D_ff_rst(input D, clk, reset, output Q, Qb);
  wire Dn, S, R;
//Asynchronous rest
  not  (Dn, D);
  nand (S, D,  clk);
  nand (R, Dn, clk);

  nand (Q,  S, Qb, reset);
  nand (Qb, R, Q,  reset);
endmodule

