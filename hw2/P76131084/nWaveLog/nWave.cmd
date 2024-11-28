wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/LiauYiShang/VLSI2024/hw2/P76131084/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DR"
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
{/top_tb/TOP/AXI/DR/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/AXI/DR/slave\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/CPU_wrapper/master0/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/AXI/DR/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1268403.195972 -snap {("G3" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/CPU_wrapper/master0/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/AXI/DR/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RID\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/RLAST} \
{/top_tb/TOP/CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/CPU_wrapper/master0/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DR/RDATA_S0\[31:0\]} \
{/top_tb/TOP/AXI/DR/RID_S0\[7:0\]} \
{/top_tb/TOP/AXI/DR/RLAST_S0} \
{/top_tb/TOP/AXI/DR/RREADY_M0} \
{/top_tb/TOP/AXI/DR/RVALID_S0} \
{/top_tb/TOP/AXI/DR/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RID\[7:0\]} \
{/top_tb/TOP/IM1/RLAST} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} {( "G2" 1 2 3 4 5 6 )} {( \
           "G3" 1 2 3 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G3" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetCursor -win $_nWave1 1274170.999303 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 1269060.927931 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1268352.601206 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSetCursor -win $_nWave1 1291934.821668 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 23604728.229331 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/write_slave0} \
{/top_tb/TOP/AXI/DW/write_slave1} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/master1/WLAST} \
{/top_tb/TOP/CPU_wrapper/master1/WREADY} \
{/top_tb/TOP/CPU_wrapper/master1/WVALID} \
{/top_tb/TOP/CPU_wrapper/master1/stall} \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/DW/WDATA_M1\[31:0\]} \
{/top_tb/TOP/AXI/DW/WLAST_M1} \
{/top_tb/TOP/AXI/DW/WREADY_S1} \
{/top_tb/TOP/AXI/DW/WVALID_M1} \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
{/top_tb/TOP/AXI/DW/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
{/top_tb/TOP/AXI/DW/write_slave0} \
{/top_tb/TOP/AXI/DW/write_slave1} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 6 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/DW"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/Write_Response"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
{/top_tb/TOP/AXI/Write_Response/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/master1/BREADY} \
{/top_tb/TOP/CPU_wrapper/master1/BVALID} \
{/top_tb/TOP/CPU_wrapper/master1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/AXI/Write_Response/BREADY_M1} \
{/top_tb/TOP/AXI/Write_Response/BVALID_S1} \
{/top_tb/TOP/AXI/Write_Response/slave\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/DM1/WDATA\[31:0\]} \
{/top_tb/TOP/DM1/WLAST} \
{/top_tb/TOP/DM1/WREADY} \
{/top_tb/TOP/DM1/WVALID} \
{/top_tb/TOP/DM1/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/DM1/BREADY} \
{/top_tb/TOP/DM1/BVALID} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 2 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectGroup -win $_nWave1 {G7}
wvSelectGroup -win $_nWave1 {G7}
wvSetCursor -win $_nWave1 23605708.502920 -snap {("G1" 1)}
