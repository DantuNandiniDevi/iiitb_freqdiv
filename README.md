# iiitb_freqdiv - Frequency Divider
This is a frequency divider model which provide frequency division upto 16 of the input clock.

</br>

# Description

This document is a model and analysis of a Freqency Divider. This model will contain a 4 bit number lines to select by which factor does the input frequency has to be divided. It is simulated using verilog, synthesis is performed using yosys.

A frequency divider takes an input frequency and generated a output frequency depending on the division factor. One of the well-known application of frequency divider is a phase lock loop, which generates multiples of a reference frequency. The other applications include frequency synthesizers, audio equipments, radar and satellite communication, Military equipments and RF devices. It is basically used in any application where frequency matching is needed and down scaling of frequency has to performed.


<p align="center">
<img src="http://www.sciweavers.org/tex2img.php?eq=fout%20%3D%20\frac{fin}{n}&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=">
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/182013018-3f34c600-2481-42fb-b9fd-366531d73fbd.png"> <br>
Fig 1: Frequency Divider
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/182013020-8a4a628e-071b-42b2-ba3a-034c2731935d.png"> <br>
Fig 2: Basic I/O diagram
</p>


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

