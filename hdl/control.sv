//---------------------------------------------------------------
//                        RISC-V Core
//                          Ver 1.0
//                          HUST
//                      Copyright  2021
//---------------------------------------------------------------
//    Copyright © 2021 by HUST
//    All rights reserved.
//
//    Module  : Control
//    Project : RISC-V pipeline
//    Author  : Le Quang Hung
//    Company : HUST
//    Date    : DEC 19th 2021
//----------------------------------------------------------------

module control (
  input         [31:0] IF_ID_inst        ,
  input                br_eq             , // branch compare equal
  output  logic [ 1:0] alu_op            , // alu operation for alu control
  output  logic        alu_src           , // alu source mux 2to1 control
  output  logic        branch            , 
  output  logic        pc_src            ,
  output  logic        IF_flush          ,
  output  logic        mem_read          , 
  output  logic        mem_write         , 
  output  logic        reg_write         , 
  output  logic        mem_to_reg        , 
  output  logic [ 2:0] imm_sel             

);

endmodule : control