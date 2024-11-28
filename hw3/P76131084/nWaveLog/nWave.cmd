wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/LiauYiShang/VLSI2024/hw3/P76131084/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvRestoreSignal -win $_nWave1 \
           "/home/LiauYiShang/VLSI2024/hw3/P76131084/build/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "10020100" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value "20100" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave1 {( "master1" 4 )} 
wvSearchNext -win $_nWave1
wvCollapseGroup -win $_nWave1 "master1"
wvExpandGroup -win $_nWave1 "DRAM_wrapper"
wvCollapseGroup -win $_nWave1 "IF/ID"
wvScrollDown -win $_nWave1 108
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 10 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/i_DRAM/A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/i_DRAM/A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
wvGetSignalClose -win $_nWave1
wvCollapseGroup -win $_nWave1 "DM"
wvSetSearchMode -win $_nWave1 -value "20100000" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 19 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 21 )} 
wvSetCursor -win $_nWave1 98617182.560966 -snap {("DRAM_wrapper" 11)}
wvSetCursor -win $_nWave1 98617577.809714 -snap {("DRAM_wrapper" 12)}
wvSetCursor -win $_nWave1 98621925.545944 -snap {("DRAM_wrapper" 13)}
wvSetCursor -win $_nWave1 98616984.936592 -snap {("DRAM_wrapper" 12)}
wvSetCursor -win $_nWave1 98622913.667814 -snap {("DRAM_wrapper" 12)}
wvSetCursor -win $_nWave1 98617380.185340 -snap {("DRAM_wrapper" 12)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 18 )} 
wvSetCursor -win $_nWave1 98558290.497491 -snap {("DRAM_wrapper" 10)}
wvSetCursor -win $_nWave1 98561650.111851 -snap {("DRAM_wrapper" 10)}
wvSetCursor -win $_nWave1 98623111.292188 -snap {("DRAM_wrapper" 21)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 11)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 18 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 20 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 19)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 18)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 19)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 12 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 13 )} 
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
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_ROM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 20 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
{/top_tb/TOP/DRAM_wrapper/BREADY} \
{/top_tb/TOP/DRAM_wrapper/BVALID} \
{/top_tb/TOP/DRAM_wrapper/c_state\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_wrapper/A_now\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/len_counter\[3:0\]} \
{/top_tb/TOP/DRAM_wrapper/DRAM_valid} \
{/top_tb/TOP/DRAM_wrapper/DRAM_CASn} \
{/top_tb/TOP/DRAM_wrapper/DRAM_RASn} \
{/top_tb/TOP/DRAM_wrapper/delay_counter\[2:0\]} \
{/top_tb/TOP/DRAM_wrapper/RDATA\[31:0\]} \
{/top_tb/TOP/DRAM_wrapper/clk} \
}
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 20 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 20)}
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
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_ROM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 14)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 15)}
wvSelectSignal -win $_nWave1 {( "WD" 8 )} 
wvSetCursor -win $_nWave1 98542480.547565 -snap {("WD" 8)}
wvSetCursor -win $_nWave1 98546828.283795 -snap {("WD" 8)}
wvSetCursor -win $_nWave1 98562242.984973 -snap {("WD" 1)}
wvScrollUp -win $_nWave1 93
wvExpandGroup -win $_nWave1 "master1"
wvSelectSignal -win $_nWave1 {( "WD" 8 )} 
wvSelectSignal -win $_nWave1 {( "master1" 11 )} 
wvSetCursor -win $_nWave1 98542282.923191 -snap {("master1" 11)}
wvScrollDown -win $_nWave1 15
wvScrollDown -win $_nWave1 21
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 45
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 16
wvScrollDown -win $_nWave1 20
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 14
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 285467539.421493 -snap {("DRAM_wrapper" 13)}
wvSetCursor -win $_nWave1 285522281.373112 -snap {("DRAM_wrapper" 12)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 19 )} 
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
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DMA_wrapper/DMA"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ROM_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_DRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/i_ROM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DRAM_wrapper"
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 16 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
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
}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
wvAddSignal -win $_nWave1 -group {"DM" \
{/top_tb/TOP/DM1/ARREADY} \
{/top_tb/TOP/DM1/ARVALID} \
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
wvAddSignal -win $_nWave1 -group {"G17" \
}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 16 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 285497183.077605 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285501728.438208 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285506471.423186 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285512993.027531 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285516945.515012 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285522083.748738 -snap {("DRAM_wrapper" 28)}
wvSetCursor -win $_nWave1 285526431.484968 -snap {("DRAM_wrapper" 24)}
wvSetCursor -win $_nWave1 285557656.136072 -snap {("DRAM_wrapper" 25)}
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 20 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 15 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 13 )} 
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 14 )} 
wvSetCursor -win $_nWave1 285468132.294615 -snap {("DRAM_wrapper" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 15 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSetSearchMode -win $_nWave1 -value "201000b4" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSearchNext -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 43
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 33
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvCollapseGroup -win $_nWave1 "master1"
wvSelectSignal -win $_nWave1 {( "DRAM_wrapper" 11 )} 
wvSetPosition -win $_nWave1 {("DRAM_wrapper" 0)}
wvCollapseGroup -win $_nWave1 "DRAM_wrapper"
wvCollapseGroup -win $_nWave1 "WD"
wvSaveSignal -win $_nWave1 \
           "/home/LiauYiShang/VLSI2024/hw3/P76131084/build/signal.rc"
wvExpandGroup -win $_nWave1 "IF/ID"
wvSelectSignal -win $_nWave1 {( "IF/ID" 10 )} 
wvSelectGroup -win $_nWave1 {G17}
wvSetPosition -win $_nWave1 {("G17" 0)}
wvSetPosition -win $_nWave1 {("IF/ID" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IF/ID" 10)}
wvSetPosition -win $_nWave1 {("DMA" 22)}
wvSetPosition -win $_nWave1 {("DMA" 22)}
wvSetPosition -win $_nWave1 {("IF/ID" 10)}
wvSetPosition -win $_nWave1 {("G17" 0)}
wvSetPosition -win $_nWave1 {("IF/ID" 10)}
wvSetPosition -win $_nWave1 {("IF/ID" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IF/ID" 9)}
wvSelectGroup -win $_nWave1 {EXE}
wvSelectGroup -win $_nWave1 {IF/ID/G17}
wvSetPosition -win $_nWave1 {("IF/ID/G17" 0)}
wvSetPosition -win $_nWave1 {("IF/ID" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G17" 0)}
wvSelectGroup -win $_nWave1 {CPU_wrapper}
wvSelectGroup -win $_nWave1 {G17}
wvSetPosition -win $_nWave1 {("IF/ID" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IF/ID" 9)}
wvRenameGroup -win $_nWave1 {IF/ID/G17} {CSR_reg}
wvSelectGroup -win $_nWave1 {IF/ID/CSR_reg}
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 0)}
wvMoveSelected -win $_nWave1
wvSelectGroup -win $_nWave1 {IF/ID/CSR_reg}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/cpu/ID_state/register"
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
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
}
wvAddSignal -win $_nWave1 -group {"IF/ID/CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" {/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
wvAddSignal -win $_nWave1 -group {"G18" \
}
wvSelectSignal -win $_nWave1 {( "IF/ID/CSR_reg" 1 )} 
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
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
}
wvAddSignal -win $_nWave1 -group {"IF/ID/CSR_reg" \
{/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/CSR_reg\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IF/ID" {/top_tb/TOP/CPU_wrapper/cpu/ID_state/register/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"EXE" \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data_EXE\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/reg2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/rs2_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/DM_stall} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/flush} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/isMemWrite_ID} \
{/top_tb/TOP/CPU_wrapper/cpu/EXE_state/result\[31:0\]} \
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
wvAddSignal -win $_nWave1 -group {"G18" \
}
wvSelectSignal -win $_nWave1 {( "IF/ID/CSR_reg" 1 )} 
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 1)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("IF/ID" 0)}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvExpandGroup -win $_nWave1 "IF/ID"
wvSelectSignal -win $_nWave1 {( "IF/ID/CSR_reg" 1 )} 
wvSelectSignal -win $_nWave1 {( "IF/ID/CSR_reg" 1 )} 
wvSelectGroup -win $_nWave1 {IF/ID/CSR_reg}
wvSetPosition -win $_nWave1 {("IF/ID/CSR_reg" 0)}
wvSetPosition -win $_nWave1 {("IF/ID" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("CSR_reg" 1)}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvSelectGroup -win $_nWave1 {CSR_reg}
wvSelectGroup -win $_nWave1 {IF/ID}
wvSetPosition -win $_nWave1 {("CSR_reg" 0)}
wvCollapseGroup -win $_nWave1 "CSR_reg"
wvSelectGroup -win $_nWave1 {IF/ID}
wvExpandGroup -win $_nWave1 "CSR_reg"
wvSelectGroup -win $_nWave1 {IF/ID}
wvExpandGroup -win $_nWave1 "IF/ID"
wvSelectGroup -win $_nWave1 {IF/ID}
wvCollapseGroup -win $_nWave1 "IF/ID"
wvSelectGroup -win $_nWave1 {IF/ID}
wvSelectSignal -win $_nWave1 {( "CSR_reg" 1 )} 
wvSetPosition -win $_nWave1 {("CSR_reg" 1)}
wvExpandBus -win $_nWave1
