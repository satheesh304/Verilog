//Testbench
module tb_ripple_add;
reg [3:0] a,b;
reg cin;
wire [4:0] sum;
wire carry;

  ripple_add a1(a,b,cin,sum,carry);

initial begin
a=4'b1101; b=4'b1111; cin=0;         // ADD
$monitor("Time=%t || A=%b B=%b ||MODE=%b|| Sum=%b Carry=%b",$time,a,b,mode,sum,carry);
#10 a=4'b1101; b=4'b0011; cin=0;   // SUB
#10 a=4'b1000; b=4'b1010; cin=1;     // ADD
#10 a=4'b0111; b=4'b1011; cin=0;      // SUB
#10 a=4'b0111; b=4'b0010; cin=1; 
end
endmodule
