module ALU_tb;
  reg [3:0] a,b;
  reg [3:0] op_sel;
  wire [7:0] out;
  integer i;

ALU Dut(a,b,op_sel,out);
initial begin
 a=4'b0110;b=4'b1001;
  for(i=0;i<13;i=i+1)begin
    op_sel=i;
    #1;
    case(i)
      0:$display($time," || A=%b  B=%b || A+B=%b ||",a,b,out);
      1:$display($time," || A=%b  B=%b || A-B=%b ||",a,b,out);
      2:$display($time," || A=%b  B=%b || A*B=%b ||",a,b,out);
      3:$display($time," || A=%b  B=%b || A/B=%b ||",a,b,out);
      4:$display($time," || A=%b  B=%b || A mod B=%b ||",a,b,out);
      5:$display($time," || A=%b  B=%b || A AND B=%b ||",a,b,out);
      6:$display($time," || A=%b  B=%b || A OR B=%b ||",a,b,out);
      7:$display($time," || A=%b  B=%b || A EXOR B=%b ||",a,b,out);
      8:$display($time," || A=%b  B=%b || A EXNOR B=%b ||",a,b,out);
      9:$display($time," || A=%b  B=%b || not A=%b ||",a,b,out);
      10:$display($time," || A=%b  B=%b || not B=%b ||",a,b,out);
      11:$display($time," || A=%b  B=%b || A<<B=%b ||",a,b,out);
      12:$display($time," || A=%b  B=%b || A>>B=%b ||",a,b,out);
      default:$display($time," Invalid Operation");
    endcase
    #10;
  end
end  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
    #1000
    $finish;
  end
endmodule
