############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir
set_top fir
add_files fir/fir.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./fir/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog