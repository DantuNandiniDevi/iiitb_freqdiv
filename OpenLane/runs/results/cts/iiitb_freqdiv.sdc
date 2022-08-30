###############################################################################
# Created by write_sdc
# Sun Aug 28 06:00:46 2022
###############################################################################
current_design iiitb_freqdiv
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clkin -period 10.0000 [get_ports {clkin}]
set_clock_transition 0.1500 [get_clocks {clkin}]
set_clock_uncertainty 0.2500 clkin
set_propagated_clock [get_clocks {clkin}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {en}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {n[0]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {n[1]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {n[2]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {n[3]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {clkout}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clkout}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clkin}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {en}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {n[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {n[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {n[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {n[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
