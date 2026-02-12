//left right shift
module SIPO(input Data_in,clk,rst,output reg [3:0] Q );
  always @(posedge clk)begin
    if(rst)begin
      Q<=4'b0000;
    end                // here LSB is  Q[0] and MSB is Q[3]
    else 
      Q<={Q[2:0],Data_in};
  end
endmodule
