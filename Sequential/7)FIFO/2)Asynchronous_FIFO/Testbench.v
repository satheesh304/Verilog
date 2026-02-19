`timescale 1ns/1ps

module Async_FIFO_tb;

  parameter W=8, D=32;
  
  reg w_clk, r_clk;
  reg w_rst, r_rst;
  reg w_en, r_en;
  reg [W-1:0] d_in;
  wire full, empty;
  wire [W-1:0] d_out;
  
  // Instantiate FIFO
  Async_FIFO #(W,D) fifo(
    .w_clk(w_clk),
    .r_clk(r_clk),
    .w_rst(w_rst),
    .r_rst(r_rst),
    .w_en(w_en),
    .r_en(r_en),
    .d_in(d_in),
    .d_out(d_out),
    .full(full),
    .empty(empty)
  );
  
  // Clocks
  initial w_clk = 0;
  always #5 w_clk = ~w_clk;  // 100 MHz write clock

  initial r_clk = 0;
  always #7 r_clk = ~r_clk;  // 71.4 MHz read clock

  // Test sequence
  integer i;
  initial begin
    // Reset
    w_rst = 1; r_rst = 1; w_en = 0; r_en = 0; d_in = 0;
    #20;
    w_rst = 0; r_rst = 0;

    // Write 20 bytes
    for(i=0; i<20; i=i+1) begin
      @(posedge w_clk);
      w_en = 1;
      d_in = i;
    end
    w_en = 0;

    // Wait a few cycles
    repeat(10) @(posedge w_clk);

    // Read 10 bytes
    r_en = 1;
    repeat(10) @(posedge r_clk);
    r_en = 0;

    // Write 15 more bytes
    for(i=20; i<35; i=i+1) begin
      @(posedge w_clk);
      w_en = 1;
      d_in = i;
    end
    w_en = 0;

    // Read remaining bytes
    r_en = 1;
    repeat(25) @(posedge r_clk);
    r_en = 0;

    #50;
    $finish;
  end
  
  initial begin
    $dumpfile("fifo.vcd");
    $dumpvars;
  end
endmodule
