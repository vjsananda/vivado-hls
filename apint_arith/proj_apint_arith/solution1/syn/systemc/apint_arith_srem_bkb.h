// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __apint_arith_srem_bkb__HH__
#define __apint_arith_srem_bkb__HH__
#include "ACMP_srem.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(apint_arith_srem_bkb) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_srem<ID, 37, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_srem_U;

    SC_CTOR(apint_arith_srem_bkb):  ACMP_srem_U ("ACMP_srem_U") {
        ACMP_srem_U.clk(clk);
        ACMP_srem_U.reset(reset);
        ACMP_srem_U.ce(ce);
        ACMP_srem_U.din0(din0);
        ACMP_srem_U.din1(din1);
        ACMP_srem_U.dout(dout);

    }

};

#endif //
