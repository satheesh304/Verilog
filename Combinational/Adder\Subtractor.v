module add/sub(a, b, mode,sum,carry);
output [3:0] sum;
output carry;
input [3:0] a,b;
input mode;

  wire [3:0] new_b;
  wire c1,c2,c3;

assign new_b = b ^ {4{mode}};
  
  full_adder f0(a[0],new_b[0],mode,sum[0],c1);
  full_adder f1(a[1],new_b[1],c1,sum[1],c2);
  full_adder f2(a[2],new_b[2],c2,sum[2],c3);
  full_adder f3(a[3],new_b[3],c3,sum[3],carry);
endmodule

module tb_add_sub;
reg [3:0] a,b;
reg mode;
wire [3:0] sum;
wire carry;

  add/sub a1(a,b,mode,sum,carry,);

initial begin
a=4'b0101; b=4'b0011; mode=0; // ADD
#10 mode=1;                  // SUB
#10 a=4'b1000; b=4'b0010; mode=0;
#10 mode=1;
#10 $stop;
end
endmodule
