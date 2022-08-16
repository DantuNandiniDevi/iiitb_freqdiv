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

# Tools Used
## Icarus Verilog (iverilog) installation on ubuntu

Open the terminal by right clicking on an empty space and type the following commands:

```
$ sudo add-apt-repository ppa:team-electronics/ppa

$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus

## Yosys installation on ubuntu

Open the terminal by right clicking on am empty space in the directory u want to install and type the following commands:

```
$ git clone https://github.com/YosysHQ/yosys.git

$ cd yosys-master

$ make

$ sudo apt install make (If make is not installed please install it)

$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

$ make

$ sudo make install
```
# PreSynthesis

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/DantuNandiniDevi/iiitb_freqdiv 

 $ cd iiitb_freqdiv 
 
 $ iverilog -o iiitb_freqdiv_out.out iiitb_freqdiv.v iiitb_freqdiv_tb.v
 
 $ ./iiitb_freqdiv_out.out
 
 $ gtkwave iiitb_freqdiv_vcd.vcd
```

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184837511-a29ecb45-d974-4053-8a1b-7f27b42759d0.png"> <br>
</p>

# PostSynthesis

```
$ yosys

yosys> read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> read_verilog iiitb_freqdiv.v

yosys> synth -top iiitb_freqdiv

yosys> dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> stat

yosys> show

yosys> write_verilog iiitb_freqdiv_netlist.v

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../verilog_model/primitives.v ../verilog_model/sky130_fd_sc_hd.v iiitb_freqdiv_netlist.v iiitb_freqdiv_tb.v

$ ./a.out

$ gtkwave iiitb_freqdiv_vcd.vcd
```
<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184857873-012cef05-acf8-4170-b8e4-0f09a664c9ed.png"> <br>
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184857905-2e755fa3-74ad-4a46-8683-94a24dfcb488.png"> <br>
</p>

# Reference

- http://pgandhi189.blogspot.com/2014/11/universal-frequency-dividor.html ,Verilog code and testbench was taken from here

- https://en.wikipedia.org/wiki/Frequencydivider 

- https://eng.libretexts.org/Bookshelves/Electrical Engineering/Electronics/Microwave and RF Design IV%3A Modules (Steer)/06%3A Mixer and Source Modules/6.08%3A Frequency Divider,some content and fig.1. was taken from here..

# Author
- Dantu Nandini Devi

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

