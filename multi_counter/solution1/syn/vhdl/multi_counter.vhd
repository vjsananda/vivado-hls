-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multi_counter is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    CNT_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    CNT_ce0 : OUT STD_LOGIC;
    CNT_we0 : OUT STD_LOGIC;
    CNT_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    CNT_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    id : IN STD_LOGIC_VECTOR (7 downto 0);
    cmd : IN STD_LOGIC_VECTOR (2 downto 0);
    data : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_r_ap_vld : OUT STD_LOGIC;
    out_valid : OUT STD_LOGIC_VECTOR (0 downto 0);
    out_valid_ap_vld : OUT STD_LOGIC );
end;


architecture behav of multi_counter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "multi_counter,hls_ip_2017_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=5.916000,HLS_SYN_LAT=2,HLS_SYN_TPT=3,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=22,HLS_SYN_LUT=153}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal cmd_read_read_fu_54_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal cmd_read_reg_140 : STD_LOGIC_VECTOR (2 downto 0);
    signal CNT_addr_2_reg_144 : STD_LOGIC_VECTOR (7 downto 0);
    signal CNT_addr_1_reg_149 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_111_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_116_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_121_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_5_fu_126_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_133_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                CNT_addr_1_reg_149 <= tmp_2_fu_116_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                CNT_addr_2_reg_144 <= tmp_4_fu_111_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                cmd_read_reg_140 <= cmd;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    CNT_address0_assign_proc : process(ap_CS_fsm_state1, cmd_read_read_fu_54_p2, cmd_read_reg_140, CNT_addr_2_reg_144, CNT_addr_1_reg_149, tmp_4_fu_111_p1, tmp_2_fu_116_p1, tmp_1_fu_121_p1, ap_CS_fsm_state3)
    begin
        if (((cmd_read_reg_140 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            CNT_address0 <= CNT_addr_1_reg_149;
        elsif (((cmd_read_reg_140 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            CNT_address0 <= CNT_addr_2_reg_144;
        elsif (((cmd_read_read_fu_54_p2 = ap_const_lv3_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CNT_address0 <= tmp_1_fu_121_p1(8 - 1 downto 0);
        elsif (((cmd_read_read_fu_54_p2 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CNT_address0 <= tmp_2_fu_116_p1(8 - 1 downto 0);
        elsif (((cmd_read_read_fu_54_p2 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CNT_address0 <= tmp_4_fu_111_p1(8 - 1 downto 0);
        else 
            CNT_address0 <= "XXXXXXXX";
        end if; 
    end process;


    CNT_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, cmd_read_read_fu_54_p2, cmd_read_reg_140, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((cmd_read_reg_140 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((cmd_read_reg_140 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            CNT_ce0 <= ap_const_logic_1;
        else 
            CNT_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    CNT_d0_assign_proc : process(ap_CS_fsm_state1, data, cmd_read_read_fu_54_p2, cmd_read_reg_140, ap_CS_fsm_state3, tmp_5_fu_126_p2, tmp_3_fu_133_p2)
    begin
        if (((cmd_read_reg_140 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            CNT_d0 <= tmp_3_fu_133_p2;
        elsif (((cmd_read_reg_140 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            CNT_d0 <= tmp_5_fu_126_p2;
        elsif (((cmd_read_read_fu_54_p2 = ap_const_lv3_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CNT_d0 <= data;
        else 
            CNT_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    CNT_we0_assign_proc : process(ap_start, ap_CS_fsm_state1, cmd_read_read_fu_54_p2, cmd_read_reg_140, ap_CS_fsm_state3)
    begin
        if ((((cmd_read_reg_140 = ap_const_lv3_2) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((cmd_read_reg_140 = ap_const_lv3_3) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_1) and (cmd_read_read_fu_54_p2 = ap_const_lv3_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            CNT_we0 <= ap_const_logic_1;
        else 
            CNT_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cmd_read_read_fu_54_p2 <= cmd;
    out_r <= ap_const_lv32_0;

    out_r_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_r_ap_vld <= ap_const_logic_1;
        else 
            out_r_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out_valid <= ap_const_lv1_0;

    out_valid_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_valid_ap_vld <= ap_const_logic_1;
        else 
            out_valid_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

        tmp_1_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(id),64));

        tmp_2_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(id),64));

    tmp_3_fu_133_p2 <= std_logic_vector(unsigned(CNT_q0) + unsigned(ap_const_lv32_1));
        tmp_4_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(id),64));

    tmp_5_fu_126_p2 <= std_logic_vector(unsigned(CNT_q0) + unsigned(ap_const_lv32_FFFFFFFF));
end behav;
