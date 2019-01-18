-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4.op
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity add is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_V_ce0 : OUT STD_LOGIC;
    a_V_q0 : IN STD_LOGIC_VECTOR (3 downto 0);
    a_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_V_ce1 : OUT STD_LOGIC;
    a_V_q1 : IN STD_LOGIC_VECTOR (3 downto 0);
    b_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_V_ce0 : OUT STD_LOGIC;
    b_V_q0 : IN STD_LOGIC_VECTOR (3 downto 0);
    b_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_V_ce1 : OUT STD_LOGIC;
    b_V_q1 : IN STD_LOGIC_VECTOR (3 downto 0);
    out_V : OUT STD_LOGIC_VECTOR (3 downto 0);
    out_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of add is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "add,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu9p-fsgd2104-3-e-es1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.894000,HLS_SYN_LAT=5,HLS_SYN_TPT=5,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=39,HLS_SYN_LUT=350}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_pp0_stage4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage4 : signal is "none";
    signal ap_block_state5_pp0_stage4_iter0 : BOOLEAN;
    signal ap_block_pp0_stage4_11001 : BOOLEAN;
    signal reg_243 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal reg_248 : STD_LOGIC_VECTOR (3 downto 0);
    signal reg_253 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal b_V_load_1_reg_381 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_fu_274_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_reg_426 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal tmp5_fu_292_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp5_reg_451 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp11_fu_298_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp11_reg_456 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp12_fu_310_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp12_reg_481 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage4_subdone : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal ap_block_pp0_stage4 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp4_fu_263_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp3_fu_269_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_fu_257_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp8_fu_280_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp7_fu_286_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp13_fu_304_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp17_fu_330_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp16_fu_336_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp15_fu_324_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp14_fu_342_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp10_fu_320_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp9_fu_348_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_316_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_const_boolean_0 = ap_block_pp0_stage4_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    reg_243_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                reg_243 <= a_V_q1;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then 
                reg_243 <= a_V_q0;
            end if; 
        end if;
    end process;

    reg_248_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
                if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                    reg_248 <= b_V_q1;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    reg_248 <= b_V_q0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                b_V_load_1_reg_381 <= b_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                reg_253 <= a_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001))) then
                tmp11_reg_456 <= tmp11_fu_298_p2;
                tmp5_reg_451 <= tmp5_fu_292_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then
                tmp12_reg_481 <= tmp12_fu_310_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                tmp1_reg_426 <= tmp1_fu_274_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_block_pp0_stage4_subdone, ap_reset_idle_pp0, ap_idle_pp0_1to1, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_block_pp0_stage3_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_pp0_stage4 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage4_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    a_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage4)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_const_boolean_0 = ap_block_pp0_stage4))) then 
                a_V_address0 <= ap_const_lv64_8(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3))) then 
                a_V_address0 <= ap_const_lv64_6(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                a_V_address0 <= ap_const_lv64_4(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                a_V_address0 <= ap_const_lv64_2(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                a_V_address0 <= ap_const_lv64_0(4 - 1 downto 0);
            else 
                a_V_address0 <= "XXXX";
            end if;
        else 
            a_V_address0 <= "XXXX";
        end if; 
    end process;


    a_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage4)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_const_boolean_0 = ap_block_pp0_stage4))) then 
                a_V_address1 <= ap_const_lv64_9(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3))) then 
                a_V_address1 <= ap_const_lv64_7(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                a_V_address1 <= ap_const_lv64_5(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                a_V_address1 <= ap_const_lv64_3(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                a_V_address1 <= ap_const_lv64_1(4 - 1 downto 0);
            else 
                a_V_address1 <= "XXXX";
            end if;
        else 
            a_V_address1 <= "XXXX";
        end if; 
    end process;


    a_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            a_V_ce0 <= ap_const_logic_1;
        else 
            a_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            a_V_ce1 <= ap_const_logic_1;
        else 
            a_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage4 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_start = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_start = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    b_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage4)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_const_boolean_0 = ap_block_pp0_stage4))) then 
                b_V_address0 <= ap_const_lv64_8(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3))) then 
                b_V_address0 <= ap_const_lv64_6(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                b_V_address0 <= ap_const_lv64_4(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                b_V_address0 <= ap_const_lv64_2(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                b_V_address0 <= ap_const_lv64_0(4 - 1 downto 0);
            else 
                b_V_address0 <= "XXXX";
            end if;
        else 
            b_V_address0 <= "XXXX";
        end if; 
    end process;


    b_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage4)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_const_boolean_0 = ap_block_pp0_stage4))) then 
                b_V_address1 <= ap_const_lv64_9(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3))) then 
                b_V_address1 <= ap_const_lv64_7(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                b_V_address1 <= ap_const_lv64_5(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                b_V_address1 <= ap_const_lv64_3(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                b_V_address1 <= ap_const_lv64_1(4 - 1 downto 0);
            else 
                b_V_address1 <= "XXXX";
            end if;
        else 
            b_V_address1 <= "XXXX";
        end if; 
    end process;


    b_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            b_V_ce0 <= ap_const_logic_1;
        else 
            b_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            b_V_ce1 <= ap_const_logic_1;
        else 
            b_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_257_p2 <= std_logic_vector(unsigned(reg_243) + unsigned(reg_248));
    out_V <= std_logic_vector(unsigned(tmp9_fu_348_p2) + unsigned(tmp_fu_316_p2));

    out_V_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_V_ap_vld <= ap_const_logic_1;
        else 
            out_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp10_fu_320_p2 <= std_logic_vector(unsigned(tmp12_reg_481) + unsigned(tmp11_reg_456));
    tmp11_fu_298_p2 <= std_logic_vector(unsigned(b_V_q1) + unsigned(a_V_q1));
    tmp12_fu_310_p2 <= std_logic_vector(unsigned(tmp13_fu_304_p2) + unsigned(b_V_q0));
    tmp13_fu_304_p2 <= std_logic_vector(unsigned(a_V_q0) + unsigned(b_V_q1));
    tmp14_fu_342_p2 <= std_logic_vector(unsigned(tmp16_fu_336_p2) + unsigned(tmp15_fu_324_p2));
    tmp15_fu_324_p2 <= std_logic_vector(unsigned(reg_243) + unsigned(b_V_q0));
    tmp16_fu_336_p2 <= std_logic_vector(unsigned(tmp17_fu_330_p2) + unsigned(a_V_q0));
    tmp17_fu_330_p2 <= std_logic_vector(unsigned(b_V_q1) + unsigned(a_V_q1));
    tmp1_fu_274_p2 <= std_logic_vector(unsigned(tmp3_fu_269_p2) + unsigned(grp_fu_257_p2));
    tmp3_fu_269_p2 <= std_logic_vector(unsigned(tmp4_fu_263_p2) + unsigned(b_V_load_1_reg_381));
    tmp4_fu_263_p2 <= std_logic_vector(unsigned(reg_253) + unsigned(b_V_q0));
    tmp5_fu_292_p2 <= std_logic_vector(unsigned(tmp7_fu_286_p2) + unsigned(grp_fu_257_p2));
    tmp7_fu_286_p2 <= std_logic_vector(unsigned(tmp8_fu_280_p2) + unsigned(reg_253));
    tmp8_fu_280_p2 <= std_logic_vector(unsigned(b_V_q0) + unsigned(a_V_q0));
    tmp9_fu_348_p2 <= std_logic_vector(unsigned(tmp14_fu_342_p2) + unsigned(tmp10_fu_320_p2));
    tmp_fu_316_p2 <= std_logic_vector(unsigned(tmp5_reg_451) + unsigned(tmp1_reg_426));
end behav;
