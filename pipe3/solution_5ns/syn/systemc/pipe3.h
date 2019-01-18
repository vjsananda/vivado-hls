// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pipe3_HH_
#define _pipe3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct pipe3 : public sc_module {
    // Port declarations 8
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > out_r;
    sc_out< sc_logic > out_r_ap_vld;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    pipe3(sc_module_name name);
    SC_HAS_PROCESS(pipe3);

    ~pipe3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<32> > tmp_fu_35_p0;
    sc_signal< sc_lv<32> > tmp_fu_35_p1;
    sc_signal< sc_lv<32> > tmp_fu_35_p2;
    sc_signal< sc_lv<32> > tmp1_fu_41_p1;
    sc_signal< sc_lv<32> > tmp1_fu_41_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_47_p1;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_tmp1_fu_41_p1();
    void thread_tmp1_fu_41_p2();
    void thread_tmp_2_fu_47_p1();
    void thread_tmp_fu_35_p0();
    void thread_tmp_fu_35_p1();
    void thread_tmp_fu_35_p2();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
