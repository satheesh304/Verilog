//Design for 64 x 8 bits single port RAM (Asynchronous read and Write`)
module single_port_RAM(data_in,addr,mode,clk,data_out);
  input [7:0] data_in;
  input [5:0]addr;
  input mode,clk;
  output  reg [7:0]data_out;
  
  /*mode=1 => Write
    mode=0 => Read*/
  reg [7:0] memory [0:63];
  
 always @(posedge clk or addr or mode)begin
    if (mode)
      memory[addr]<=data_in;
    else
      data_out=memory[addr];
  end
endmodule
/*THIS IS FOR SYNCHRONOUS WRITE AND ASYNCHRONOUS READ

always @(posedge clk)begin
    if (mode)
      memory[addr]<=data_in;
    
      end
  always @(posedge clk or addr or mode)begin
    if (!mode)
    data_out=memory[addr];
  end
*/
