module SR_latch(input Sb,Rb,output Q,Qb );
  nand (Q,Sb,Qb);
  nand (Qb,Rb,Q);
endmodule

