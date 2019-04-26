#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_address0", 5, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("A_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("A_q0", 8, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("B_address0", 5, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("B_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("B_q0", 8, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("X_address0", 5, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("X_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("X_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("X_d0", 13, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("Y_address0", 5, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("Y_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("Y_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("Y_d0", 13, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("xlimit", 5, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("ylimit", 5, hls_in, 5, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "loop_functions";
