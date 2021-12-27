//---------------------------------------------------------------
//                        RISC-V Core
//                          Ver 1.0
//                          HUST
//                      Copyright  2021
//---------------------------------------------------------------
//    Copyright © 2021 by HUST
//    All rights reserved.
//
//    Module  : Memomy_Access
//    Project : RISC-V pipeline
//    Author  : Le Quang Hung
//    Company : HUST
//    Date    : DEC 19th 2021
//----------------------------------------------------------------
`timescale 1ns/10ps
module tb_riscv_pipeline_top ();
logic clk;
logic reset_n;

riscv_pineline_top riscv_pineline_top(
  .clk    (clk),
  .reset_n(reset_n)
  );

always #5 clk = ~clk;

initial begin
  clk = 0;
  reset_n = 1;
  repeat(1) @(negedge clk);
  reset_n = 0;
  repeat(1) @(negedge clk);
  reset_n = 1;
  repeat(10) @(negedge clk);
  reset_n = 0;
  repeat(2) @(negedge clk);
  reset_n = 1;
  repeat(25) @(negedge clk);
  $finish;
end

endmodule : tb_riscv_pipeline_top