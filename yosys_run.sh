# read design

read_verilog /home/nandini.dantu/Desktop/iiitb_freqdiv/verilog/iiitb_freqdiv.v

# generic synthesis
synth -top iiitb_freqdiv

# mapping to mycells.lib
dfflibmap -liberty ‌‌‌‌‌‌/home/nandini.dantu/Desktop/iiitb_freqdiv/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/nandini.dantu/Desktop/iiitb_freqdiv/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr iiitb_freqdiv_synth.v
