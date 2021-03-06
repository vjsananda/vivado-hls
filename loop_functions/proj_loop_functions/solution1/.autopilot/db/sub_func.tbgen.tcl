set moduleName sub_func
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sub_func}
set C_modelType { void 0 }
set C_modelArgList {
	{ I int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ O int 13 regular {array 32 { 0 3 } 0 1 }  }
	{ limit uint 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "I", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "O", "interface" : "memory", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "limit", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ I_address0 sc_out sc_lv 5 signal 0 } 
	{ I_ce0 sc_out sc_logic 1 signal 0 } 
	{ I_q0 sc_in sc_lv 8 signal 0 } 
	{ O_address0 sc_out sc_lv 5 signal 1 } 
	{ O_ce0 sc_out sc_logic 1 signal 1 } 
	{ O_we0 sc_out sc_logic 1 signal 1 } 
	{ O_d0 sc_out sc_lv 13 signal 1 } 
	{ limit sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "I", "role": "address0" }} , 
 	{ "name": "I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce0" }} , 
 	{ "name": "I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "I", "role": "q0" }} , 
 	{ "name": "O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "O", "role": "address0" }} , 
 	{ "name": "O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce0" }} , 
 	{ "name": "O_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "we0" }} , 
 	{ "name": "O_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "O", "role": "d0" }} , 
 	{ "name": "limit", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "limit", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sub_func",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "O", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "limit", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sub_func {
		I {Type I LastRead 1 FirstWrite -1}
		O {Type O LastRead -1 FirstWrite 2}
		limit {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "63"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	I { ap_memory {  { I_address0 mem_address 1 5 }  { I_ce0 mem_ce 1 1 }  { I_q0 mem_dout 0 8 } } }
	O { ap_memory {  { O_address0 mem_address 1 5 }  { O_ce0 mem_ce 1 1 }  { O_we0 mem_we 1 1 }  { O_d0 mem_din 1 13 } } }
	limit { ap_none {  { limit in_data 0 5 } } }
}
