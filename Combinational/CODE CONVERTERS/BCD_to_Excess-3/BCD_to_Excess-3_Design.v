module BCD_to_Ex3(BCD,Ex3);
  input [15:0] BCD;
  output reg [15:0] Ex3;
  
  always @(*)begin
    Ex3=BCD+ 4'b 0011;
    
    if (Ex3[3:0]>10) begin
       Ex3[3:0]=4'b1001;
       Ex3[7:4]+=1;
       if (Ex3[7:4]>10)begin
          Ex3[7:4]=4'b1001;
          Ex3[11:8]+=1;
          if (Ex3[11:8]>10)begin
            Ex3[11:8]=4'b1001;
            Ex3[15:12]+=1;
        end
      end
    end
  end
endmodule
