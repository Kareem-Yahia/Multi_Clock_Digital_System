vlib work
vlog -f sourcefile.txt +cover 
vsim -voptargs=+acc work.SYS_TOP_tb -cover -classdebug -sv_seed 50
add wave *

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX_CLK \
sim:/SYS_TOP_tb/SYS_TOP/RX_CLK \
sim:/SYS_TOP_tb/SYS_TOP/SYNC_RST_sys \
sim:/SYS_TOP_tb/SYS_TOP/SYNC_RST_UART \
sim:/SYS_TOP_tb/SYS_TOP/REG0 \
sim:/SYS_TOP_tb/SYS_TOP/REG1 \
sim:/SYS_TOP_tb/SYS_TOP/REG2 \
sim:/SYS_TOP_tb/SYS_TOP/REG3 \
sim:/SYS_TOP_tb/SYS_TOP/Div_Ratio_RX \
sim:/SYS_TOP_tb/SYS_TOP/P_DATA_reg_RX \
sim:/SYS_TOP_tb/SYS_TOP/data_valid_reg_RX \
sim:/SYS_TOP_tb/SYS_TOP/RX_P_Data \
sim:/SYS_TOP_tb/SYS_TOP/RX_D_VLD \
sim:/SYS_TOP_tb/SYS_TOP/ALU_OUT \
sim:/SYS_TOP_tb/SYS_TOP/OUT_Valid \
sim:/SYS_TOP_tb/SYS_TOP/RdData \
sim:/SYS_TOP_tb/SYS_TOP/RdData_Valid \
sim:/SYS_TOP_tb/SYS_TOP/ALU_EN \
sim:/SYS_TOP_tb/SYS_TOP/ALU_FUN \
sim:/SYS_TOP_tb/SYS_TOP/CLK_GATING_EN \
sim:/SYS_TOP_tb/SYS_TOP/Address \
sim:/SYS_TOP_tb/SYS_TOP/Wr_En \
sim:/SYS_TOP_tb/SYS_TOP/Rd_En \
sim:/SYS_TOP_tb/SYS_TOP/Wr_Data \
sim:/SYS_TOP_tb/SYS_TOP/TX_P_Data \
sim:/SYS_TOP_tb/SYS_TOP/TX_D_VLD \
sim:/SYS_TOP_tb/SYS_TOP/clk_div_en \
sim:/SYS_TOP_tb/SYS_TOP/wfull \
sim:/SYS_TOP_tb/SYS_TOP/r_data \
sim:/SYS_TOP_tb/SYS_TOP/rinc \
sim:/SYS_TOP_tb/SYS_TOP/rempty \
sim:/SYS_TOP_tb/SYS_TOP/busy \


add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/FIFO/winc \
sim:/SYS_TOP_tb/SYS_TOP/FIFO/w_data
add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/FIFO/FIFO_Memory/FIFO_MEM

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/REG/regArr

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX/Ser_Done \
sim:/SYS_TOP_tb/SYS_TOP/TX/Ser_En \
sim:/SYS_TOP_tb/SYS_TOP/TX/Ser_Data \
sim:/SYS_TOP_tb/SYS_TOP/TX/Mux_sel

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX/Serializer/Counter

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX/Serializer/P_Data

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX/Serializer/LSR

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/TX/Data_Valid

add wave -position insertpoint  \
sim:/SYS_TOP_tb/SYS_TOP/prescale

#coverage save SYS_TOP_tb.ucdb -onexit -du SYS_TOP
run -all
#coverage report -output functional_coverage_rpt.txt -srcfile=* -detail -all -dump -annotate -directive -cvg
#coverage report -output assertion_coverage.txt -detail -assert 
#quit -sim
#vcover report mips1_tb.ucdb -details -annotate -all -output code_coverage_rpt.txt

#you can add -option to functional coverage
#you can add -classdebug in vsim command to access the classes in waveform
#you can add -uvmcontrol=all  in vsim command in case uvm
#in windows to create sourcefile.txt use dir /b > sourcefile.txt


 