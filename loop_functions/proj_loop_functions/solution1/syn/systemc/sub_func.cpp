// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "sub_func.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic sub_func::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic sub_func::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> sub_func::ap_ST_fsm_state1 = "1";
const sc_lv<3> sub_func::ap_ST_fsm_state2 = "10";
const sc_lv<3> sub_func::ap_ST_fsm_state3 = "100";
const sc_lv<32> sub_func::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> sub_func::ap_const_lv32_1 = "1";
const sc_lv<1> sub_func::ap_const_lv1_0 = "0";
const sc_lv<32> sub_func::ap_const_lv32_2 = "10";
const sc_lv<5> sub_func::ap_const_lv5_0 = "00000";
const sc_lv<13> sub_func::ap_const_lv13_0 = "0000000000000";
const sc_lv<5> sub_func::ap_const_lv5_1 = "1";
const sc_lv<1> sub_func::ap_const_lv1_1 = "1";
const bool sub_func::ap_const_boolean_1 = true;

sub_func::sub_func(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_I_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_88_p1 );

    SC_METHOD(thread_I_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_O_address0);
    sensitive << ( tmp_1_reg_117 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_O_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_O_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( accum_reg_65 );
    sensitive << ( tmp_2_fu_93_p1 );

    SC_METHOD(thread_O_we0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_accum_1_fu_97_p2);
    sensitive << ( accum_reg_65 );
    sensitive << ( tmp_2_fu_93_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_77_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_77_p2 );

    SC_METHOD(thread_exitcond_fu_77_p2);
    sensitive << ( limit );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_i_1_fu_82_p2);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_tmp_1_fu_88_p1);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_tmp_2_fu_93_p1);
    sensitive << ( I_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_77_p2 );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "sub_func_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, I_address0, "(port)I_address0");
    sc_trace(mVcdFile, I_ce0, "(port)I_ce0");
    sc_trace(mVcdFile, I_q0, "(port)I_q0");
    sc_trace(mVcdFile, O_address0, "(port)O_address0");
    sc_trace(mVcdFile, O_ce0, "(port)O_ce0");
    sc_trace(mVcdFile, O_we0, "(port)O_we0");
    sc_trace(mVcdFile, O_d0, "(port)O_d0");
    sc_trace(mVcdFile, limit, "(port)limit");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_1_fu_82_p2, "i_1_fu_82_p2");
    sc_trace(mVcdFile, i_1_reg_112, "i_1_reg_112");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_1_fu_88_p1, "tmp_1_fu_88_p1");
    sc_trace(mVcdFile, tmp_1_reg_117, "tmp_1_reg_117");
    sc_trace(mVcdFile, exitcond_fu_77_p2, "exitcond_fu_77_p2");
    sc_trace(mVcdFile, accum_1_fu_97_p2, "accum_1_fu_97_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_reg_54, "i_reg_54");
    sc_trace(mVcdFile, accum_reg_65, "accum_reg_65");
    sc_trace(mVcdFile, tmp_2_fu_93_p1, "tmp_2_fu_93_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

sub_func::~sub_func() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void sub_func::thread_ap_clk_no_reset_() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        accum_reg_65 = accum_1_fu_97_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        accum_reg_65 = ap_const_lv13_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_54 = i_1_reg_112.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_54 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_1_reg_112 = i_1_fu_82_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_77_p2.read(), ap_const_lv1_0))) {
        tmp_1_reg_117 = tmp_1_fu_88_p1.read();
    }
}

void sub_func::thread_I_address0() {
    I_address0 =  (sc_lv<5>) (tmp_1_fu_88_p1.read());
}

void sub_func::thread_I_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        I_ce0 = ap_const_logic_1;
    } else {
        I_ce0 = ap_const_logic_0;
    }
}

void sub_func::thread_O_address0() {
    O_address0 =  (sc_lv<5>) (tmp_1_reg_117.read());
}

void sub_func::thread_O_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        O_ce0 = ap_const_logic_1;
    } else {
        O_ce0 = ap_const_logic_0;
    }
}

void sub_func::thread_O_d0() {
    O_d0 = (!tmp_2_fu_93_p1.read().is_01() || !accum_reg_65.read().is_01())? sc_lv<13>(): (sc_bigint<13>(tmp_2_fu_93_p1.read()) + sc_biguint<13>(accum_reg_65.read()));
}

void sub_func::thread_O_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        O_we0 = ap_const_logic_1;
    } else {
        O_we0 = ap_const_logic_0;
    }
}

void sub_func::thread_accum_1_fu_97_p2() {
    accum_1_fu_97_p2 = (!tmp_2_fu_93_p1.read().is_01() || !accum_reg_65.read().is_01())? sc_lv<13>(): (sc_bigint<13>(tmp_2_fu_93_p1.read()) + sc_biguint<13>(accum_reg_65.read()));
}

void sub_func::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void sub_func::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void sub_func::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void sub_func::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_77_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void sub_func::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void sub_func::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_77_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void sub_func::thread_exitcond_fu_77_p2() {
    exitcond_fu_77_p2 = (!i_reg_54.read().is_01() || !limit.read().is_01())? sc_lv<1>(): sc_lv<1>(i_reg_54.read() == limit.read());
}

void sub_func::thread_i_1_fu_82_p2() {
    i_1_fu_82_p2 = (!i_reg_54.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_reg_54.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void sub_func::thread_tmp_1_fu_88_p1() {
    tmp_1_fu_88_p1 = esl_zext<64,5>(i_reg_54.read());
}

void sub_func::thread_tmp_2_fu_93_p1() {
    tmp_2_fu_93_p1 = esl_sext<13,8>(I_q0.read());
}

void sub_func::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_77_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
