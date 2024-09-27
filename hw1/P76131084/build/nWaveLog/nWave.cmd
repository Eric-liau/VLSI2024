wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/avsd24/avsd24108/VLSI2024/hw1/P76131084/build/top.fsdb}
verdiSetActWin -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetFileTimeRange -win $_nWave1 -time_unit 1p 0 85420000
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/IF_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/ID_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/EXE_state/ALU"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUop\[2:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/result\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUop\[2:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/result\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/EXE_state"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/EXE_state/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/cpu/EXE_state"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUop\[2:0\]} \
{/top_tb/TOP/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/result\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUop\[2:0\]} \
{/top_tb/TOP/cpu/EXE_state/pc_in\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/ALUctl\[4:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data1\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/data2\[31:0\]} \
{/top_tb/TOP/cpu/EXE_state/ALU/result\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetCursor -win $_nWave1 78634626.037009 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvExit
