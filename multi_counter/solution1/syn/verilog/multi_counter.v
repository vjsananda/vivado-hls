// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="multi_counter,hls_ip_2017_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=5.916000,HLS_SYN_LAT=2,HLS_SYN_TPT=3,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=22,HLS_SYN_LUT=153}" *)

module multi_counter (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        CNT_address0,
        CNT_ce0,
        CNT_we0,
        CNT_d0,
        CNT_q0,
        id,
        cmd,
        data,
        out_r,
        out_r_ap_vld,
        out_valid,
        out_valid_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] CNT_address0;
output   CNT_ce0;
output   CNT_we0;
output  [31:0] CNT_d0;
input  [31:0] CNT_q0;
input  [7:0] id;
input  [2:0] cmd;
input  [31:0] data;
output  [31:0] out_r;
output   out_r_ap_vld;
output  [0:0] out_valid;
output   out_valid_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] CNT_address0;
reg CNT_ce0;
reg CNT_we0;
reg[31:0] CNT_d0;
reg out_r_ap_vld;
reg out_valid_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] cmd_read_read_fu_54_p2;
reg   [2:0] cmd_read_reg_140;
reg   [7:0] CNT_addr_2_reg_144;
reg   [7:0] CNT_addr_1_reg_149;
wire  signed [63:0] tmp_4_fu_111_p1;
wire  signed [63:0] tmp_2_fu_116_p1;
wire  signed [63:0] tmp_1_fu_121_p1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_5_fu_126_p2;
wire   [31:0] tmp_3_fu_133_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd2) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_addr_1_reg_149 <= tmp_2_fu_116_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd3) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_addr_2_reg_144 <= tmp_4_fu_111_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        cmd_read_reg_140 <= cmd;
    end
end

always @ (*) begin
    if (((cmd_read_reg_140 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        CNT_address0 = CNT_addr_1_reg_149;
    end else if (((cmd_read_reg_140 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        CNT_address0 = CNT_addr_2_reg_144;
    end else if (((cmd_read_read_fu_54_p2 == 3'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_address0 = tmp_1_fu_121_p1;
    end else if (((cmd_read_read_fu_54_p2 == 3'd2) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_address0 = tmp_2_fu_116_p1;
    end else if (((cmd_read_read_fu_54_p2 == 3'd3) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_address0 = tmp_4_fu_111_p1;
    end else begin
        CNT_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((cmd_read_reg_140 == 3'd2) & (1'b1 == ap_CS_fsm_state3)) | ((cmd_read_reg_140 == 3'd3) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd2) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd3) & (1'b1 == ap_CS_fsm_state1)))) begin
        CNT_ce0 = 1'b1;
    end else begin
        CNT_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((cmd_read_reg_140 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        CNT_d0 = tmp_3_fu_133_p2;
    end else if (((cmd_read_reg_140 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        CNT_d0 = tmp_5_fu_126_p2;
    end else if (((cmd_read_read_fu_54_p2 == 3'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        CNT_d0 = data;
    end else begin
        CNT_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((cmd_read_reg_140 == 3'd2) & (1'b1 == ap_CS_fsm_state3)) | ((cmd_read_reg_140 == 3'd3) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b1) & (cmd_read_read_fu_54_p2 == 3'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        CNT_we0 = 1'b1;
    end else begin
        CNT_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        out_valid_ap_vld = 1'b1;
    end else begin
        out_valid_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign cmd_read_read_fu_54_p2 = cmd;

assign out_r = 32'd0;

assign out_valid = 1'd0;

assign tmp_1_fu_121_p1 = $signed(id);

assign tmp_2_fu_116_p1 = $signed(id);

assign tmp_3_fu_133_p2 = (CNT_q0 + 32'd1);

assign tmp_4_fu_111_p1 = $signed(id);

assign tmp_5_fu_126_p2 = ($signed(CNT_q0) + $signed(32'd4294967295));

endmodule //multi_counter