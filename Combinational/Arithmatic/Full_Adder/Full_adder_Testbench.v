//TEST BENCH
module tb_full;
reg a,b,cin;
wire sum,carry;

full_adder f1(sum,carry,a,b,cin);

initial begin
a=0;b=0;cin=0;
#10 a=0;b=1;cin=0;
#10 a=1;b=0;cin=0;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $stop;
end
endmodule
