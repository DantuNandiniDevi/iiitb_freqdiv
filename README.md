# iiitb_freqdiv - Frequency Divider
This is a frequency divider model which provide frequency division upto 16 of the input clock.

</br>

**To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:** 

```
 $ git clone https://github.com/DantuNandiniDevi/iiitb_freqdiv 
 $ cd iiitb_freqdiv 
 $ iverilog -o iiitb_freqdiv_out.out iiitb_freqdiv.v iiitb_freqdiv_tb.v
 $ ./iiitb_freqdiv_out.out
 $ gtkwave iiitb_freqdiv_vcd.vcd
```

**Simulation Waveform:**

![simulated_waveform](https://user-images.githubusercontent.com/62461290/181249785-ff6d7efb-2070-46cd-8c22-c73c88f9d1a8.png)
