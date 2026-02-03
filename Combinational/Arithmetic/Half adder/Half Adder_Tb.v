module tb_half_adder;
reg a,b;
wire sum,carry;

half_adder h1(sum,carry,a,b);

initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $stop;
end
endmodule
