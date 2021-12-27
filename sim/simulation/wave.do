onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/clk
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/reset_n
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_branch
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_src
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_write
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/IF_ID_write
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/IF_flush
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/IF_ID_pc
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/IF_ID_inst
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_next
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_new
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_out
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/pc_ff
add wave -noupdate -expand -group IF /tb_riscv_pipeline_top/riscv_pineline_top/instruction_fetch/inst
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/clk
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/reset_n
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/IF_ID_pc
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/IF_ID_inst
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/IF_ID_rs1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/IF_ID_rs2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/MEM_WB_rd
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/MEM_WB_reg_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/wb_data
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/imm_sel
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/mem_read
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/mem_to_reg
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/alu_op
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/reg_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/alu_src
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/mem_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ctrl_sel
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/forward_data_reg1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/forward_data_reg2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/alu_out
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/mem_data
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/EX_MEM_alu_out
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/EX_MEM_mem_to_reg
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/pc_branch
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/br_eq
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_imm_gen
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_mem_read
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_mem_to_reg
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_alu_op
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_reg_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_alu_src
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_mem_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_data1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_data2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_rs1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_rs2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_rd
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/ID_EX_inst_func
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/imm_gen_out
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/reg_data1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/reg_data2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/data1
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/data2
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_mem_to_reg
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_reg_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_mem_write
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_mem_read
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_alu_src
add wave -noupdate -expand -group ID /tb_riscv_pipeline_top/riscv_pineline_top/instruction_decode/out_alu_op
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/clk
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/reset_n
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_mem_to_reg
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_reg_write
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_mem_write
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_mem_read
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_alu_src
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_alu_op
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_data1
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_data2
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_imm_gen
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_rs1
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_rs2
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_rd
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/ID_EX_inst_func
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/forwardA
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/forwardB
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/wb_data
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_alu_out
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_mem_to_reg
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_reg_write
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_mem_write
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_mem_read
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_dataB
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/EX_MEM_rd
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/alu_out
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/dataA
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/dataB
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/alu_ctrl
add wave -noupdate -group EX /tb_riscv_pipeline_top/riscv_pineline_top/execute/alu_inB
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/clk
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/reset_n
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_mem_to_reg
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_reg_write
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_mem_read
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_mem_write
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_alu_out
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_dataB
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/EX_MEM_rd
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/MEM_WB_mem_to_reg
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/MEM_WB_reg_write
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/MEM_WB_mem_data
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/MEM_WB_rd
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/MEM_WB_alu_out
add wave -noupdate -group MEM /tb_riscv_pipeline_top/riscv_pineline_top/memory_access/mem_data
add wave -noupdate -group WB /tb_riscv_pipeline_top/riscv_pineline_top/register_write/MEM_WB_mem_to_reg
add wave -noupdate -group WB /tb_riscv_pipeline_top/riscv_pineline_top/register_write/MEM_WB_mem_data
add wave -noupdate -group WB /tb_riscv_pipeline_top/riscv_pineline_top/register_write/MEM_WB_alu_out
add wave -noupdate -group WB /tb_riscv_pipeline_top/riscv_pineline_top/register_write/wb_data
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/IF_ID_inst
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/br_eq
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/alu_op
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/alu_src
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/branch
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/pc_src
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/IF_flush
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/mem_read
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/mem_write
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/reg_write
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/mem_to_reg
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/imm_sel
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/IF_ID_inst_opcode
add wave -noupdate -expand -group CONTROL /tb_riscv_pipeline_top/riscv_pineline_top/control/IF_ID_inst_func
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/IF_ID_rs1
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/IF_ID_rs2
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/EX_MEM_rd
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/MEM_WB_rd
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/ID_EX_rd
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/ID_EX_rs1
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/ID_EX_rs2
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/EX_MEM_reg_write
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/MEM_WB_reg_write
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/ID_EX_reg_write
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/branch
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/forwardA
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/forwardB
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/forward_data_reg1
add wave -noupdate -expand -group FORWARD /tb_riscv_pipeline_top/riscv_pineline_top/forwarding_unit/forward_data_reg2
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/IF_ID_rs1
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/IF_ID_rs2
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/ID_EX_rd
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/ID_EX_mem_read
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/ctrl_sel
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/IF_ID_write
add wave -noupdate -expand -group HAZARD /tb_riscv_pipeline_top/riscv_pineline_top/hazard_detection/pc_write
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {226610 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {409500 ps}
