//---------------------------------------------------------------
//                        RISC-V Core
//                          Ver 1.0
//                          HUST
//                      Copyright  2021
//---------------------------------------------------------------
//    Copyright © 2021 by HUST
//    All rights reserved.
//
//    Module  : Register_Write
//    Project : RISC-V pipeline
//    Author  : Le Quang Hung
//    Company : HUST
//    Date    : DEC 19th 2021
//----------------------------------------------------------------

module register_write (
  input               MEM_WB_mem_to_reg ,
  input        [31:0] MEM_WB_mem_data   ,
  input        [31:0] MEM_WB_alu_out    ,
  output logic [31:0] wb_data           
);

//----------------------------------------------------------------
//         Register MEM/WB
//----------------------------------------------------------------
always_comb begin : proc_mem_wb_register
  wb_data = (MEM_WB_mem_to_reg) ? MEM_WB_mem_data : MEM_WB_alu_out;
end

endmodule : register_write