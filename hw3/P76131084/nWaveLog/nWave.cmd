wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/LiauYiShang/VLSI2024/hw3/P76131084/build/top.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/LiauYiShang/VLSI2024/hw3/P76131084/build/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave1 {( "WDT" 1 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
}
wvAddSignal -win $_nWave1 -group {"G20" \
}
wvSelectSignal -win $_nWave1 {( "WDT" 4 )} 
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
}
wvAddSignal -win $_nWave1 -group {"G20" \
}
wvSelectSignal -win $_nWave1 {( "WDT" 4 )} 
wvSetPosition -win $_nWave1 {("WDT" 4)}
wvGetSignalClose -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "WDT" 4 )} 
wvSetSearchMode -win $_nWave1 -value 1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "WDT" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G20" \
}
wvSelectSignal -win $_nWave1 {( "WDT" 5 6 )} 
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G20" \
}
wvSelectSignal -win $_nWave1 {( "WDT" 5 6 )} 
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G20}
wvSetPosition -win $_nWave1 {("G20" 0)}
wvSetPosition -win $_nWave1 {("DMA" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DMA" 0)}
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvSetPosition -win $_nWave1 {("WDT" 6)}
wvSetPosition -win $_nWave1 {("DMA" 0)}
wvRenameGroup -win $_nWave1 {G20} {WDT_wrapper}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 0)}
wvMoveSelected -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 3 )} 
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 4 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 4)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 6)}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 5 )} 
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 7 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 7 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 8 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 8 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 9 10 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 9 10 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 10)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 11 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 11 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 261781353.675230 -snap {("WDT_wrapper" 7)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 12 13 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S2} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S2} \
}
wvCollapseGroup -win $_nWave1 "Write_response"
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 12 13 )} 
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 12)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 5)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 7)}
wvExpandGroup -win $_nWave1 "master1"
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 6 7 )} 
wvCollapseGroup -win $_nWave1 "master1"
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 6 7 )} 
wvExpandGroup -win $_nWave1 "Write_response"
wvSelectSignal -win $_nWave1 {( "WDT_wrapper" 6 7 )} 
wvSelectSignal -win $_nWave1 {( "Write_response" 10 )} 
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvSelectSignal -win $_nWave1 {( "Write_response" 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("WD" 1)}
wvSetPosition -win $_nWave1 {("Write_response" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 9 10 )} 
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 9 10 )} 
wvSetPosition -win $_nWave1 {("Write_response" 10)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 3
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AR/Address_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/AW/Address_Arbiter"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
{/top_tb/TOP/AXI/Write_Response/BID_S4\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 11 )} 
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
{/top_tb/TOP/AXI/Write_Response/BID_S4\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 11 )} 
wvSetPosition -win $_nWave1 {("Write_response" 11)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
{/top_tb/TOP/AXI/Write_Response/BID_S4\[7:0\]} \
{/top_tb/TOP/WDT_wrapper/AWID\[7:0\]} \
{/top_tb/TOP/WDT_wrapper/AWID_reg\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 12 13 )} 
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"IF" \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/PCsrc} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/instr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/CEB} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/rst} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/IM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/IF_state/reboot} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/instr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/val3\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs1\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rs2\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/rd\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/WB_pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[30\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[29\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[28\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[27\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[26\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[25\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[24\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[23\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[22\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[21\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[20\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[19\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[18\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[17\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[16\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[15\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[14\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[13\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[12\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[11\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[10\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[9\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[7\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[6\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[5\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[4\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[3\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[2\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[1\]\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvAddSignal -win $_nWave1 -group {"interrupt_handler" \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/WTO_interrupt} \
{/top_tb/TOP/CPU_wrapper/cpu/interrupt_handler/reboot} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "EXE"
wvAddSignal -win $_nWave1 -group {"CPU_wrapper" \
{/top_tb/TOP/CPU_wrapper/Memadr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/store_data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "CPU_wrapper"
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvCollapseGroup -win $_nWave1 "master0"
wvAddSignal -win $_nWave1 -group {"master1" \
{/top_tb/TOP/CPU_wrapper/master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ARREADY} \
{/top_tb/TOP/CPU_wrapper/master1/ARVALID} \
{/top_tb/TOP/CPU_wrapper/master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/AWREADY} \
{/top_tb/TOP/CPU_wrapper/master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/master1/RREADY} \
{/top_tb/TOP/CPU_wrapper/master1/RVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WDATA_reg\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/writedata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/ADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvCollapseGroup -win $_nWave1 "master1"
wvAddSignal -win $_nWave1 -group {"AXI" \
{/top_tb/TOP/AXI/ARVALID_M0} \
{/top_tb/TOP/AXI/ARVALID_M1} \
{/top_tb/TOP/AXI/ARVALID_M2} \
{/top_tb/TOP/AXI/AWREADY_S3} \
{/top_tb/TOP/AXI/WREADY_S3} \
{/top_tb/TOP/AXI/WVALID_S3} \
{/top_tb/TOP/AXI/AWLEN_S2\[3:0\]} \
{/top_tb/TOP/AXI/ARVALID_S0} \
{/top_tb/TOP/AXI/ARVALID_S1} \
{/top_tb/TOP/AXI/ARVALID_S2} \
{/top_tb/TOP/AXI/ARVALID_S3} \
{/top_tb/TOP/AXI/ARVALID_S4} \
{/top_tb/TOP/AXI/ARVALID_S5} \
}
wvCollapseGroup -win $_nWave1 "AXI"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ID\[7:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/ADDR_source1\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source0} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source1} \
{/top_tb/TOP/AXI/AR/Address_Arbiter/VALID_source2} \
{/top_tb/TOP/AXI/AR/READY} \
{/top_tb/TOP/AXI/AR/VALID_M0} \
{/top_tb/TOP/AXI/AR/VALID_M1} \
{/top_tb/TOP/AXI/AR/VALID_M2} \
}
wvCollapseGroup -win $_nWave1 "AR"
wvAddSignal -win $_nWave1 -group {"AW" \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M0} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M1} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/READY_M2} \
{/top_tb/TOP/AXI/AW/Address_Decoder/ADDR\[31:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M2} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/AW/Address_Arbiter/state\[2:0\]} \
{/top_tb/TOP/AXI/AW/VALID_M0} \
{/top_tb/TOP/AXI/AW/VALID_M1} \
{/top_tb/TOP/AXI/AW/ADDR_M0\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M1\[31:0\]} \
{/top_tb/TOP/AXI/AW/ADDR_M2\[31:0\]} \
{/top_tb/TOP/AXI/AW/busy} \
{/top_tb/TOP/AXI/AW/VALID_S2} \
}
wvCollapseGroup -win $_nWave1 "AW"
wvAddSignal -win $_nWave1 -group {"Write_response" \
{/top_tb/TOP/AXI/Write_Response/slave\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/state\[2:0\]} \
{/top_tb/TOP/AXI/Write_Response/BID_S5\[7:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S5} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S5} \
{/top_tb/TOP/AXI/Write_Response/BID_M1\[3:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_S4} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S4} \
{/top_tb/TOP/AXI/Write_Response/BID_S4\[7:0\]} \
{/top_tb/TOP/WDT_wrapper/AWID\[7:0\]} \
{/top_tb/TOP/WDT_wrapper/AWID_reg\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WD" \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/WVALID_M2} \
{/top_tb/TOP/AXI/DW/WREADY_M2} \
{/top_tb/TOP/AXI/DW/WREADY_S5} \
{/top_tb/TOP/AXI/DW/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_S0} \
{/top_tb/TOP/AXI/DW/WDATA_S2\[31:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "WD"
wvAddSignal -win $_nWave1 -group {"RD" \
{/top_tb/TOP/AXI/DR/slave\[2:0\]} \
{/top_tb/TOP/AXI/DR/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/RID_S5\[7:0\]} \
{/top_tb/TOP/AXI/DR/finish_S0} \
{/top_tb/TOP/AXI/DR/finish_S1} \
{/top_tb/TOP/AXI/DR/finish_S2} \
{/top_tb/TOP/AXI/DR/finish_S5} \
}
wvCollapseGroup -win $_nWave1 "RD"
wvAddSignal -win $_nWave1 -group {"DRAM_wrapper" \
{/top_tb/TOP/DRAM_wrapper/ARID\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARID_reg\[7:0\]} \
{/top_tb/TOP/DRAM_wrapper/RLAST} \
{/top_tb/TOP/DRAM_wrapper/RVALID} \
{/top_tb/TOP/DRAM_wrapper/RREADY} \
{/top_tb/TOP/DRAM_wrapper/ARADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/ARREADY} \
{/top_tb/TOP/DRAM_wrapper/ARVALID} \
{/top_tb/TOP/DRAM_wrapper/AWREADY} \
{/top_tb/TOP/DRAM_wrapper/AWVALID} \
{/top_tb/TOP/DRAM_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/WREADY} \
{/top_tb/TOP/DRAM_wrapper/WVALID} \
{/top_tb/TOP/DRAM_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
{/top_tb/TOP/DM1/DO\[31:0\]} \
{/top_tb/TOP/DM1/ARADDR\[31:0\]} \
{/top_tb/TOP/DM1/AWREADY} \
{/top_tb/TOP/DM1/AWVALID} \
{/top_tb/TOP/DM1/RVALID} \
{/top_tb/TOP/DM1/RREADY} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/DI\[31:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/data\[31:0\]} \
{/top_tb/TOP/DM1/A\[13:0\]} \
{/top_tb/TOP/DM1/BWEB\[31:0\]} \
{/top_tb/TOP/DM1/CEB} \
{/top_tb/TOP/DM1/WEB} \
}
wvAddSignal -win $_nWave1 -group {"DM/DRAM Memory" \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[511:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[32\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[31\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[30\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[29\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[28\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[27\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[26\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[25\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[24\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[23\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[22\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[21\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[20\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[19\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[18\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[17\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[16\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[15\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[14\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[13\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[12\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[11\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[10\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[9\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[8\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[7\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[6\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[5\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[4\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[3\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[2\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[1\]\[31:0\]} \
{/top_tb/TOP/DM1/i_SRAM/MEMORY\[0\]\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DM/DRAM Memory"
wvCollapseGroup -win $_nWave1 "DM"
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/IM1/AWADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWREADY} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/WREADY} \
{/top_tb/TOP/IM1/WVALID} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/WDATA\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/araddr_reg\[13:0\]} \
{/top_tb/TOP/IM1/BWEB\[31:0\]} \
{/top_tb/TOP/IM1/CEB} \
{/top_tb/TOP/IM1/WEB} \
{/top_tb/TOP/IM1/WSTRB\[3:0\]} \
}
wvCollapseGroup -win $_nWave1 "IM"
wvAddSignal -win $_nWave1 -group {"DMA_wrapper" \
{/top_tb/TOP/DMA_wrapper/WDATA_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMADST\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMASRC\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/state_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/nextstate_s\[1:0\]} \
{/top_tb/TOP/DMA_wrapper/DMAEN} \
{/top_tb/TOP/DMA_wrapper/AWADDR_S\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/AWREADY_S} \
{/top_tb/TOP/DMA_wrapper/AWVALID_S} \
{/top_tb/TOP/DMA_wrapper/WREADY_S} \
{/top_tb/TOP/DMA_wrapper/WVALID_S} \
{/top_tb/TOP/DMA_wrapper/DMA_interrupt} \
}
wvCollapseGroup -win $_nWave1 "DMA_wrapper"
wvAddSignal -win $_nWave1 -group {"DMA" \
{/top_tb/TOP/DMA_wrapper/DMA/RLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLAST} \
{/top_tb/TOP/DMA_wrapper/DMA/WLEN\[3:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/DMALEN\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/ARREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/ARVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/RVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/AWREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/AWVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/WREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/WVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/reg_full} \
{/top_tb/TOP/DMA_wrapper/DMA/AWADDR\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_r\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/state_w\[2:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/BREADY} \
{/top_tb/TOP/DMA_wrapper/DMA/BVALID} \
{/top_tb/TOP/DMA_wrapper/DMA/RDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/WDATA\[31:0\]} \
{/top_tb/TOP/DMA_wrapper/DMA/data\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "DMA"
wvAddSignal -win $_nWave1 -group {"WDT_wrapper" \
{/top_tb/TOP/WDT_wrapper/AWADDR\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/AWREADY} \
{/top_tb/TOP/WDT_wrapper/AWVALID} \
{/top_tb/TOP/WDT_wrapper/WREADY} \
{/top_tb/TOP/WDT_wrapper/WVALID} \
{/top_tb/TOP/WDT_wrapper/BREADY} \
{/top_tb/TOP/WDT_wrapper/BVALID} \
{/top_tb/TOP/WDT_wrapper/WDATA\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/state\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/nextstate\[1:0\]} \
{/top_tb/TOP/WDT_wrapper/clk} \
{/top_tb/TOP/WDT_wrapper/rst} \
{/top_tb/TOP/WDT_wrapper/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"WDT" \
{/top_tb/TOP/WDT_wrapper/WDT/CNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN_b2} \
{/top_tb/TOP/WDT_wrapper/WDT/WTOCNT\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/WTO_b} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/rst2} \
}
wvAddSignal -win $_nWave1 -group {"G21" \
}
wvSelectSignal -win $_nWave1 {( "Write_response" 12 13 )} 
wvSetPosition -win $_nWave1 {("Write_response" 13)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("Write_response" 12)}
wvSetPosition -win $_nWave1 {("WDT_wrapper" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("WDT_wrapper" 15)}
wvSetCursor -win $_nWave1 261772262.954022 -snap {("WDT_wrapper" 14)}
wvSetCursor -win $_nWave1 261777401.187748 -snap {("WDT_wrapper" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 13
wvScrollDown -win $_nWave1 13
wvSaveSignal -win $_nWave1 \
           "/home/LiauYiShang/VLSI2024/hw3/P76131084/build/signal.rc"
wvExit
