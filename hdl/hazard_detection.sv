//---------------------------------------------------------------
//                        RISC-V Core
//                          Ver 1.0
//                          HUST
//                      Copyright  2021
//---------------------------------------------------------------
//    Copyright © 2021 by HUST
//    All rights reserved.
//
//    Module  : Hazard_Detection
//    Project : RISC-V pipeline
//    Author  : Le Quang Hung
//    Company : HUST
//    Date    : DEC 19th 2021
//----------------------------------------------------------------

module hazard_detection (
  input [ 4:0]  IF_ID_rs1     ,
  input [ 4:0]  IF_ID_rs2     ,
  input [ 4:0]  ID_EX_rd      ,
  input        ID_EX_mem_read,
  output logic ctrl_sel       ,
  output logic IF_ID_write   ,
  output logic pc_write      
);

//----------------------------------------------------------------
//         Stalling
//----------------------------------------------------------------

always_comb begin : proc_stall
  if(ID_EX_mem_read) begin
    if(ID_EX_rd == IF_ID_rs1 || ID_EX_rd == IF_ID_rs2) begin
      ctrl_sel    = 0;
      IF_ID_write = 0;
      pc_write    = 0;
    end
  end else begin
    ctrl_sel    = 1;
    IF_ID_write = 1;
    pc_write    = 1;
  end
end

endmodule : hazard_detection