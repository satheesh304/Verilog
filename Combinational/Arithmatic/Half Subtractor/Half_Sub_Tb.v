module tb_half_sub;
reg a,b;
wire diff, borrow;

half_sub(diff, borrow, a, b);

initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $stop;
end
endmodule
