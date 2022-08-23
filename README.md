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
For installating various softwares used in this project, open the terminal by right clicking on an empty space and type the respective commands in the terminal: <br>

<b> Note: If any of the commands that do not have sudo in the prefix doesnot go through, please add a prefix of sudo and try running it. </b>

## Icarus Verilog (iverilog) GTKWave installation on ubuntu

```
$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus

## Yosys installation on ubuntu

Open the terminal by right clicking on am empty space in the directory u want to install and type the following commands:

```
$ git clone https://github.com/YosysHQ/yosys.git

$ cd yosys-master

$ sudo apt install make (If make is not installed please install it)

$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

$ make

$ sudo make install
```

## Python Installation
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```

## Docker Installation
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

## OpenLane Installation
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git

$ cd OpenLane/

$ make

$ make test
```

## Magic Installation

For Magic to be installed and work properly the following softwares have to be installed first:

### Installing csh
```
$ sudo apt-get install csh
```

### Installing x11/xorg
```
$ sudo apt-get install x11

$ sudo apt-get install xorg

$ sudo apt-get install xorg openbox
```

### Installing GCC
```
$ sudo apt-get install gcc
```

### Installing build-essential
```
$ sudo apt-get install build-essential
```

### Installing OpenGL
```
$ sudo apt-get install freeglut3-dev
```

### Installing tcl/tk
```
$ sudo apt-get install tcl-dev tk-dev
```

After all the softwares are installed, run the following commands for installing magic:

```
$ git clone https://github.com/RTimothyEdwards/magic

$ cd magic

$ ./configure

$ make

$ make install
```

## Klayout Installation

```
$ sudo apt-get install klayout
```

## ngspice Installation

```
$ sudo apt-get install ngspice
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

# Layout

The layout is running using OpenLane. <br>

Navigate to the openlane folder in terminal and give the following command :<br>

```
$ make mount (if this command doesnot go through prefix it with sudo)
```
![1](https://user-images.githubusercontent.com/62461290/186196147-6c8d37a3-9769-428c-93e2-aefb4c897cf0.png)

After entering the openlane container give the following command:<br>
```
$ ./flow.tcl interactive
```
![2](https://user-images.githubusercontent.com/62461290/186196149-b595f203-a711-46cc-8949-39bee6de552e.png)

This command will take you into the tcl console. In the tcl console type the following commands:<br>

```
% package require openlane 0.9
```
![3](https://user-images.githubusercontent.com/62461290/186196154-c3caa53a-1199-45d1-8903-ba7a1f626c96.png)<br>
```
% prep -design iiitb_freqdiv
```
![4](https://user-images.githubusercontent.com/62461290/186196159-9444df4e-9580-4a04-ba68-c79190d78863.png)<br>

## Synthesis
```
% run_synthesis
```
![5](https://user-images.githubusercontent.com/62461290/186196161-f33eab28-90e1-4697-acf1-cb7f527e00f3.png)<br>

### Synthesis Reports
Details of the gates used <br>
![6](https://user-images.githubusercontent.com/62461290/186196164-fe84ae83-bcbc-4b19-aacd-33e3cae190eb.png)<br>
Setup Slack after synthesis<br>
![7](https://user-images.githubusercontent.com/62461290/186196166-f7891cfa-f494-4424-9362-7e687439b896.png)<br>
Hold Slack after synthesis<br>
![8](https://user-images.githubusercontent.com/62461290/186196172-adb3cd87-1b50-4dd7-93fa-90913282cf8b.png)<br>
Power Report after synthesis <br>
![10](https://user-images.githubusercontent.com/62461290/186196178-6372f2ae-23d8-4beb-9fea-01a5e46ad98c.png)<br>
Area Report after synthesis <br>
![11](https://user-images.githubusercontent.com/62461290/186196181-8c1a7d06-257b-4531-98b3-1debcda90723.png)<br>

## Floorplan
```
% run_floorplan
```
![12](https://user-images.githubusercontent.com/62461290/186196186-4b53f186-3f44-4147-9079-699ac4567c1f.png) <br>

### Floorplan Reports
Die Area <br>
![13 die area](https://user-images.githubusercontent.com/62461290/186196191-89e19512-a102-4448-b12e-70273a85f3dd.png)<br>
Core Area <br>
![14 core area](https://user-images.githubusercontent.com/62461290/186196192-16061428-637d-4110-b3d8-b6e423c6a179.png)<br>
Magic command to open the floorplan <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.max.lef def read iiitb_freqdiv.def &
```
![15](https://user-images.githubusercontent.com/62461290/186196194-8eea1851-7cdf-4e34-9fee-60bf383e9e71.png)<br>
Floorplan view <br>
![16](https://user-images.githubusercontent.com/62461290/186196199-cddc8944-aa5a-4280-9bbf-f35305475fba.png)<br>

## Placement
```
% run_placement
```
![17](https://user-images.githubusercontent.com/62461290/186196200-1ab8ad67-44d1-4ab2-bd43-522fc0ef1d47.png)<br>

### Placement Reports
Magic command to open the floorplan <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.max.lef def read iiitb_freqdiv.def &
```
![19](https://user-images.githubusercontent.com/62461290/186196056-035b823b-004d-4e36-b1e2-271b3388e2d4.png)<br>
Placement View <br>
![18](https://user-images.githubusercontent.com/62461290/186196203-8721a32c-e777-4675-94ce-30c598a80768.png)<br>
Hold and Setup Slack after placement <br>
![20](https://user-images.githubusercontent.com/62461290/186196068-876e618c-143a-4cb0-bef6-9a401d836434.png)<br>
Power Utilization after placement <br>
![22](https://user-images.githubusercontent.com/62461290/186196074-174de3f5-9e47-4e73-8b2e-e89176120bfc.png)<br>
Area  Utilization after placement <br>
![23](https://user-images.githubusercontent.com/62461290/186196075-8feaeacf-31eb-46f7-a5d7-a4c3945f42d3.png)<br>
Hold and Setup Slack after placement resize<br>
![24](https://user-images.githubusercontent.com/62461290/186201336-be5d0313-299b-42cc-9c60-711d0dd0b764.png)<br>
Power Utilization after placement resize <br>
![25 resize](https://user-images.githubusercontent.com/62461290/186196084-4566f705-c325-4160-886d-f1b2ab0d69d2.png)<br>
Area  Utilization after placement resize<br>
![26 resize](https://user-images.githubusercontent.com/62461290/186196089-53ae650a-eb70-4f99-af57-78d6ce239f40.png)<br>

## Clock Tree Synthesis
```
% run_cts
```
![27](https://user-images.githubusercontent.com/62461290/186196119-6291ce2a-f275-4e7a-bc9e-04fe4446cb10.png)<br>

### Clock Tree Synthesis Reports
Power Utilization after cts <br>
![27 nrb](https://user-images.githubusercontent.com/62461290/186206817-753eb091-a773-4d61-b0a5-b829b6ce35fb.png)<br>
Hold and Setup Slack after cts <br>
![27 nra](https://user-images.githubusercontent.com/62461290/186202210-c90110f6-3205-4c36-ae54-1a11fff6d5bc.png)<br>
Hold and Setup Slack after cts resize<br>
![27 a](https://user-images.githubusercontent.com/62461290/186202169-a844b5c0-af82-4395-b9e9-6744418c7053.png)<br>
Power Utilization after cts resize<br>
![27 b](https://user-images.githubusercontent.com/62461290/186196104-616c891a-0f0b-49a8-993b-a8815f513550.png)<br>

## Routing
```
% run_routing
```
![28](https://user-images.githubusercontent.com/62461290/186196129-f2370254-0c01-41ae-89ec-194155fa96a7.png)<br>
### Routing View
Magic command to open the floorplan <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.max.lef def read iiitb_freqdiv.def &
```
![28 c](https://user-images.githubusercontent.com/62461290/186196126-6e4144c3-5fdf-4d85-bcd5-04e3ac129e7d.png)<br>
![28 a ](https://user-images.githubusercontent.com/62461290/186196120-ba8739a7-b2ce-4504-8a1b-b9ea55e7ba27.png)<br>
![28 b](https://user-images.githubusercontent.com/62461290/186196122-eddc61b9-1cca-40a0-a735-c4708f680faf.png)<br>

## Viewing Layout in KLayout

![29 klayout](https://user-images.githubusercontent.com/62461290/186196141-f0ec3efd-0269-47f7-9c27-3c9aaa2a233e.png)<br>

![29 a](https://user-images.githubusercontent.com/62461290/186196138-bbddd0d4-6ae9-42fa-9c53-7c131eb432be.png)<br>


### NOTE
We can also run the whole flow at once instead of step by step process by giving the following command in openlane container<br>
```
$ ./flow.tcl -design iiitb_freqdiv
```
![100](https://user-images.githubusercontent.com/62461290/186196145-6850e928-d54a-404d-ad30-1fdb124a883b.png)<br>

All the steps will be automated and all the files will be generated.<br>

we can open the mag file and view the layout after the whole process by the following command, you can follow the path as per the image.<br>

```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech iiitb_freqdiv.mag &
```
![30](https://user-images.githubusercontent.com/62461290/186206184-3f146947-84d9-4178-9dd2-c54330067168.png)<br>
![31](https://user-images.githubusercontent.com/62461290/186206194-4ea81f2f-ab7f-4d34-840d-7aabff547774.png)<br>
![32](https://user-images.githubusercontent.com/62461290/186206196-526af125-b092-4bfc-9025-33dad27a3e6e.png)<br>




# Reference

- http://pgandhi189.blogspot.com/2014/11/universal-frequency-dividor.html ,Verilog code and testbench was taken from here

- https://en.wikipedia.org/wiki/Frequencydivider 

- https://eng.libretexts.org/Bookshelves/ElectricalEngineering/Electronics/Microwave and RF Design IV%3A Modules (Steer)/06%3A Mixer and Source Modules/6.08%3A Frequency Divider,some content and fig.1. was taken from here..

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

