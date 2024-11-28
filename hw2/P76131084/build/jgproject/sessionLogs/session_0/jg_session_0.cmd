# ----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2021.03
# platform  : Linux 5.15.0-113-generic
# version   : 2021.03 FCS 64 bits
# build date: 2021.03.23 02:50:43 UTC
# ----------------------------------------
# started   : 2024-10-17 14:51:12 CST
# hostname  : caidcpuserver0.(none)
# pid       : 2903785
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33645' '-style' 'windows' '-data' 'AAAAdHicY2RgYLCp////PwMYMFcBCQEGHwZfhiAGVyDpzxAGpOGA8QGUYcMI4gGxHhjqMxQzJDMUMWQyFDCUAHlZDOkM8QxJYJEUIDsVqKYEqCIHpBcAy2IQWA==' '-proj' '/home/LiauYiShang/VLSI2024/hw2/P76131084/build/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/LiauYiShang/VLSI2024/hw2/P76131084/build/jgproject/.tmp/.initCmds.tcl' '../script/jg_bridge.tcl'
#DO NOT MODIFY THIS FILE
set ABVIP_INST_DIR /usr/cad/cadence/VIPCAT/cur/tools/abvip
set vip_dir $::env(vip_dir)

abvip -set_location $ABVIP_INST_DIR
set_visualize_auto_load_debugging_tables on
analyze -f $vip_dir/bridge_duv/jg.f -sv09
elaborate -top top -param top.axi_master_0.READONLY_INTERFACE 1 -param top.axi_master_1.READONLY_INTERFACE 0\
-param top.axi_master_0.MAX_PENDING 1 -param top.axi_master_1.MAX_PENDING 1\
-param top.axi_slave_0.MAX_PENDING 1 -param top.axi_slave_1.MAX_PENDING 1\

