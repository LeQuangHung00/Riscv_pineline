//---------------------------------------------------------------
//                        RISC-V Core
//                          Ver 1.0
//                          HUST
//                      Copyright  2021
//---------------------------------------------------------------
//    Copyright © 2021 by HUST
//    All rights reserved.
//
//    Module  : Forward_Unit
//    Project : RISC-V pipeline
//    Author  : Le Quang Hung
//    Company : HUST
//    Date    : DEC 19th 2021
//----------------------------------------------------------------

module forwarding_unit (
  input [4:0]   IF_ID_rs1        ,
  input [4:0]   IF_ID_rs2        ,
  input [4:0]   EX_MEM_rd        ,
  input [4:0]   MEM_WB_rd        ,
  input [4:0]   ID_EX_rd         ,
  input [4:0]   ID_EX_rs1        ,
  input [4:0]   ID_EX_rs2        ,
  input         EX_MEM_reg_write ,
  input         MEM_WB_reg_write ,
  input         ID_EX_reg_write  ,
  input         branch           ,
  output logic  forwardA         ,
  output logic  forwardB         ,
  output logic  forward_data_reg1,
  output logic  forward_data_reg2
);

//----------------------------------------------------------------
//         Data Memory
//----------------------------------------------------------------
always_comb begin : proc_forward_ex_hazard
  // MUX A
  if (EX_MEM_reg_write && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs1)) begin
    forwardA = 2'b10;
  end
  else if (MEM_WB_reg_write && (MEM_WB_rd != 0) && ~(EX_MEM_reg_write && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs1)) && (MEM_WB_rd == ID_EX_rs1)) begin
    forwardA = 2'b01;
  end
  else forwardA = 2'b00;
end

//----------------------------------------------------------------
//         Data Memory
//----------------------------------------------------------------
always_comb begin : proc_forward_mem_hazard
  // MUX B
  if (EX_MEM_reg_write && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs2)) begin
    forwardB = 2'b10;
  end
  else if (MEM_WB_reg_write && (MEM_WB_rd != 0) && ~(EX_MEM_reg_write && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs2)) && (MEM_WB_rd == ID_EX_rs2)) begin
    forwardB = 2'b01;
  end
  else  forwardB = 2'b00;
end

//----------------------------------------------------------------
//         Data Memory
//----------------------------------------------------------------
always_comb begin : proc_forwardAlu_result_to_branch_compare
  // forward alu result back to branch compare
  if (branch && (ID_EX_rd != 0) && ID_EX_reg_write && (IF_ID_rs1 == ID_EX_rd)) begin
    forward_data_reg1 = 2'b01;
  end
  else if (branch && (EX_MEM_rd != 0) && ~(ID_EX_reg_write && (IF_ID_rs1 == ID_EX_rd)) && EX_MEM_reg_write && (EX_MEM_rd == IF_ID_rs1)) begin
    forward_data_reg1 = 2'b10;
  end
  else forward_data_reg1 = 2'b00;
  // forward alu result back to branch compare

end

//----------------------------------------------------------------
//         Data Memory
//----------------------------------------------------------------
always_comb begin : proc_forward_mem_to_branch_compare // forward mem result to branch compare
  if (branch && (EX_MEM_rd != 0) && ~(ID_EX_reg_write && (IF_ID_rs1 == ID_EX_rd)) && EX_MEM_reg_write && (EX_MEM_rd == IF_ID_rs2)) begin
    forward_data_reg2 = 2'b10;
  end 
  else if (branch && (ID_EX_rd != 0) && ID_EX_reg_write && (IF_ID_rs2 == ID_EX_rd)) begin
    forward_data_reg2 = 2'b01;
  end
  else forward_data_reg2 = 2'b00;
end
endmodule : forwarding_unit