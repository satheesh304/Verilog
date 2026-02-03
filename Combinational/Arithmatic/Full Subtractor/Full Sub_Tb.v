//TEST BENCH
module tb_full_sub;
reg a,b,cin;
wire diff, borrow;

  full_sub f1(a,b,cin,diff,borrow);

initial begin
a=0;b=0;cin=0;
#10 a=0;b=1;cin=0;
#10 a=1;b=0;cin=0;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $stop;
end
endmodule
