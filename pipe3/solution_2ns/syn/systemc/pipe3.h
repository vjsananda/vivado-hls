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

#include "pipe3_mul_32s_32sbkb.h"

namespace ap_rtl {

struct pipe3 : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > out_r;
    sc_out< sc_logic > out_r_ap_vld;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    pipe3(sc_module_name name);
    SC_HAS_PROCESS(pipe3);

    ~pipe3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    pipe3_mul_32s_32sbkb<1,2,32,32,32>* pipe3_mul_32s_32sbkb_U1;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_35_p2;
    sc_signal< sc_lv<32> > tmp_reg_63;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > tmp1_fu_41_p1;
    sc_signal< sc_lv<32> > tmp1_fu_41_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_45_p1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_tmp1_fu_41_p1();
    void thread_tmp1_fu_41_p2();
    void thread_tmp_2_fu_45_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
