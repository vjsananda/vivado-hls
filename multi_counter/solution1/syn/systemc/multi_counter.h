// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _multi_counter_HH_
#define _multi_counter_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct multi_counter : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > CNT_address0;
    sc_out< sc_logic > CNT_ce0;
    sc_out< sc_logic > CNT_we0;
    sc_out< sc_lv<32> > CNT_d0;
    sc_in< sc_lv<32> > CNT_q0;
    sc_in< sc_lv<8> > id;
    sc_in< sc_lv<3> > cmd;
    sc_in< sc_lv<32> > data;
    sc_out< sc_lv<32> > out_r;
    sc_out< sc_logic > out_r_ap_vld;
    sc_out< sc_lv<1> > out_valid;
    sc_out< sc_logic > out_valid_ap_vld;


    // Module declarations
    multi_counter(sc_module_name name);
    SC_HAS_PROCESS(multi_counter);

    ~multi_counter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > cmd_read_read_fu_54_p2;
    sc_signal< sc_lv<3> > cmd_read_reg_140;
    sc_signal< sc_lv<8> > CNT_addr_2_reg_144;
    sc_signal< sc_lv<8> > CNT_addr_1_reg_149;
    sc_signal< sc_lv<64> > tmp_4_fu_111_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_116_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_121_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > tmp_5_fu_126_p2;
    sc_signal< sc_lv<32> > tmp_3_fu_133_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_CNT_address0();
    void thread_CNT_ce0();
    void thread_CNT_d0();
    void thread_CNT_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_cmd_read_read_fu_54_p2();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_out_valid();
    void thread_out_valid_ap_vld();
    void thread_tmp_1_fu_121_p1();
    void thread_tmp_2_fu_116_p1();
    void thread_tmp_3_fu_133_p2();
    void thread_tmp_4_fu_111_p1();
    void thread_tmp_5_fu_126_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
