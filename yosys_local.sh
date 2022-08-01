# read design

read_verilog /home/user/asic_prepsem/iiitb_freqdiv/verilog/iiitb_freqdiv.v

# generic synthesis
synth -top iiitb_freqdiv

# mapping to mycells.lib
dfflibmap -liberty /home/user/asic_prepsem/iiitb_freqdiv/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/user/asic_prepsem/iiitb_freqdiv/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr iiitb_freqdiv_synth.v
