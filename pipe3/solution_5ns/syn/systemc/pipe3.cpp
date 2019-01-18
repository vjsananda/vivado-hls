// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "pipe3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic pipe3::ap_const_logic_1 = sc_dt::Log_1;
const bool pipe3::ap_const_boolean_1 = true;
const sc_logic pipe3::ap_const_logic_0 = sc_dt::Log_0;

pipe3::pipe3(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_out_r);
    sensitive << ( ap_start );
    sensitive << ( tmp1_fu_41_p2 );
    sensitive << ( tmp_2_fu_47_p1 );

    SC_METHOD(thread_out_r_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_tmp1_fu_41_p1);
    sensitive << ( a );

    SC_METHOD(thread_tmp1_fu_41_p2);
    sensitive << ( tmp_fu_35_p2 );
    sensitive << ( tmp1_fu_41_p1 );

    SC_METHOD(thread_tmp_2_fu_47_p1);
    sensitive << ( b );

    SC_METHOD(thread_tmp_fu_35_p0);
    sensitive << ( b );

    SC_METHOD(thread_tmp_fu_35_p1);
    sensitive << ( a );

    SC_METHOD(thread_tmp_fu_35_p2);
    sensitive << ( tmp_fu_35_p0 );
    sensitive << ( tmp_fu_35_p1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "pipe3_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, out_r, "(port)out_r");
    sc_trace(mVcdFile, out_r_ap_vld, "(port)out_r_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, tmp_fu_35_p0, "tmp_fu_35_p0");
    sc_trace(mVcdFile, tmp_fu_35_p1, "tmp_fu_35_p1");
    sc_trace(mVcdFile, tmp_fu_35_p2, "tmp_fu_35_p2");
    sc_trace(mVcdFile, tmp1_fu_41_p1, "tmp1_fu_41_p1");
    sc_trace(mVcdFile, tmp1_fu_41_p2, "tmp1_fu_41_p2");
    sc_trace(mVcdFile, tmp_2_fu_47_p1, "tmp_2_fu_47_p1");
#endif

    }
    mHdltvinHandle.open("pipe3.hdltvin.dat");
    mHdltvoutHandle.open("pipe3.hdltvout.dat");
}

pipe3::~pipe3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void pipe3::thread_ap_done() {
    ap_done = ap_start.read();
}

void pipe3::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void pipe3::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void pipe3::thread_out_r() {
    out_r = (!tmp1_fu_41_p2.read().is_01() || !tmp_2_fu_47_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp1_fu_41_p2.read()) + sc_bigint<32>(tmp_2_fu_47_p1.read()));
}

void pipe3::thread_out_r_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        out_r_ap_vld = ap_const_logic_1;
    } else {
        out_r_ap_vld = ap_const_logic_0;
    }
}

void pipe3::thread_tmp1_fu_41_p1() {
    tmp1_fu_41_p1 = a.read();
}

void pipe3::thread_tmp1_fu_41_p2() {
    tmp1_fu_41_p2 = (!tmp_fu_35_p2.read().is_01() || !tmp1_fu_41_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_fu_35_p2.read()) + sc_bigint<32>(tmp1_fu_41_p1.read()));
}

void pipe3::thread_tmp_2_fu_47_p1() {
    tmp_2_fu_47_p1 = b.read();
}

void pipe3::thread_tmp_fu_35_p0() {
    tmp_fu_35_p0 = b.read();
}

void pipe3::thread_tmp_fu_35_p1() {
    tmp_fu_35_p1 = a.read();
}

void pipe3::thread_tmp_fu_35_p2() {
    tmp_fu_35_p2 = (!tmp_fu_35_p0.read().is_01() || !tmp_fu_35_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_fu_35_p0.read()) * sc_bigint<32>(tmp_fu_35_p1.read());
}

void pipe3::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r\" :  \"" << out_r.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_ap_vld\" :  \"" << out_r_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
