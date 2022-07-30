# iiitb_freqdiv - Frequency Divider
This is a frequency divider model which provide frequency division upto 16 of the input clock.

</br>

# Icarus Verilog (iverilog) installation on ubuntu

Open the terminal by right clicking on an empty space and type the following commands:

```
$ sudo add-apt-repository ppa:team-electronics/ppa

$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus


# PreSimulation

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/DantuNandiniDevi/iiitb_freqdiv 

 $ cd iiitb_freqdiv 
 
 $ iverilog -o iiitb_freqdiv_out.out iiitb_freqdiv.v iiitb_freqdiv_tb.v
 
 $ ./iiitb_freqdiv_out.out
 
 $ gtkwave iiitb_freqdiv_vcd.vcd
```

![presimulated_waveform](https://user-images.githubusercontent.com/62461290/181249785-ff6d7efb-2070-46cd-8c22-c73c88f9d1a8.png)

# Contributors
- Dantu Nandini Devi </br>
- Vasanthi D R </br>
- Kunal Ghosh </br>
- Nanditha Rao </br>
- Madhav Rao </br>

# Acknowledgement
- Kunal Ghosh, VSD Corp. Pvt. Ltd. </br>
- Nanditha Rao, Professor, IIITB </br>
- Madhav Rao, Professor, IIITB </br>

# Contact Information
- Dantu Nandini Devi, MS by Research Student, IIITB, nandini.dantu@gmail.com </br>
- Vasanthi D R, PhD Student, IIITB, vasanthi.dr@iiitb.ac.in </br>
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com </br>
- Nanditha Rao, nanditha.rao@iiitb.ac.in </br>
- Madhav Rao, mr@iiitb.ac.in </br>

