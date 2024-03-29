// Generated by stratus_hls 17.21-s100  (88813.070850)
// Sun Nov 17 10:14:34 2019
// from ../SobelFilter.cpp
#ifndef CYNTH_PART_SobelFilter_SobelFilter_rtl_h
#define CYNTH_PART_SobelFilter_SobelFilter_rtl_h

#include "systemc.h"
/* Include declarations of instantiated parts. */
#include "SobelFilter_ROM_9X8_embossFilterMask.h"


/* Declaration of the synthesized module. */
struct SobelFilter : public sc_module {
  sc_in<bool > i_clk;
  sc_in<bool > i_rst;
  sc_out<bool > i_rgb_busy;
  sc_in<bool > i_rgb_vld;
  sc_in<sc_uint<24> > i_rgb_data;
  sc_in<bool > o_newR_busy;
  sc_out<bool > o_newR_vld;
  sc_out<sc_uint<8> > o_newR_data;
  sc_in<bool > o_newG_busy;
  sc_out<bool > o_newG_vld;
  sc_out<sc_uint<8> > o_newG_data;
  sc_in<bool > o_newB_busy;
  sc_out<bool > o_newB_vld;
  sc_out<sc_uint<8> > o_newB_data;
  SobelFilter( sc_module_name name );
  SC_HAS_PROCESS(SobelFilter);
  sc_signal<bool > o_newB_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Xor_1U_11_4_7_out1;
  sc_signal<bool > o_newB_m_unacked_req;
  sc_signal<sc_uint<1> > SobelFilter_Or_1U_9_4_8_out1;
  sc_signal<bool > o_newG_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Xor_1U_11_4_4_out1;
  sc_signal<bool > o_newG_m_unacked_req;
  sc_signal<sc_uint<1> > SobelFilter_Or_1U_9_4_5_out1;
  sc_signal<bool > o_newR_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Xor_1U_11_4_1_out1;
  sc_signal<bool > o_newR_m_unacked_req;
  sc_signal<sc_uint<1> > SobelFilter_Or_1U_9_4_2_out1;
  sc_signal<sc_uint<1> > SobelFilter_N_Muxb_1_2_14_4_10_out1;
  sc_signal<sc_uint<1> > SobelFilter_And_1U_6_4_42_out1;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1_4_41_out1;
  sc_signal<sc_uint<1> > SobelFilter_Or_1U_9_4_39_out1;
  sc_signal<bool > i_rgb_m_unvalidated_req;
  sc_signal<sc_uint<1> > SobelFilter_And_1U_6_4_40_out1;
  sc_signal<sc_uint<4> > global_state_next;
  sc_signal<sc_uint<1> > SobelFilter_N_Mux_32_2_22_4_35_ctrl1;
  sc_signal<sc_int<32> > SobelFilter_Add2i128s32_4_34_out1;
  sc_signal<sc_uint<8> > SobelFilter_Add2Mul2s8u8s32_4_33_in2;
  sc_signal<sc_uint<8> > SobelFilter_N_Mux_8_2_23_4_23_out1;
  sc_signal<sc_uint<1> > SobelFilter_Lti255s32_4_22_out1;
  sc_signal<sc_uint<32> > SobelFilter_N_Mux_32_2_22_4_21_out1;
  sc_signal<sc_uint<1> > SobelFilter_N_Mux_32_2_22_4_21_ctrl1;
  sc_signal<sc_int<32> > SobelFilter_Add2i128s32_4_20_out1;
  sc_signal<sc_int<8> > SobelFilter_Add2Mul2s8u8s32_4_19_in1;
  sc_signal<sc_uint<8> > SobelFilter_Add2Mul2s8u8s32_4_19_in2;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s8u8s32_4_19_in3;
  sc_signal<sc_uint<1> > gs_ctrl0;
  sc_signal<sc_uint<24> > s_reg_26;
  sc_signal<sc_int<2> > SobelFilter_Add2i1u2_4_17_out1;
  sc_signal<sc_int<2> > SobelFilter_Add2i1u2_4_18_out1;
  sc_signal<sc_uint<2> > s_reg_24;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s8u8s32_4_33_out1;
  sc_signal<sc_uint<32> > s_reg_23;
  sc_signal<sc_uint<32> > SobelFilter_N_Mux_32_2_22_4_35_out1;
  sc_signal<sc_uint<32> > s_reg_22;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s8u8s32_4_19_out1;
  sc_signal<sc_uint<32> > s_reg_21;
  sc_signal<sc_uint<1> > SobelFilter_Lti255s32_4_37_out1;
  sc_signal<sc_uint<2> > s_reg_25;
  sc_signal<sc_uint<2> > s_reg_20;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1_4_43_out1;
  sc_signal<sc_uint<1> > SobelFilter_And_1U_6_4_13_out1;
  sc_signal<sc_uint<1> > SobelFilter_And_1U_6_4_14_out1;
  sc_signal<sc_uint<1> > SobelFilter_And_1U_6_4_15_out1;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1_4_9_out1;
  sc_signal<bool > o_newB_m_req_m_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1_4_6_out1;
  sc_signal<bool > o_newG_m_req_m_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1_4_3_out1;
  sc_signal<bool > o_newR_m_req_m_trig_req;
  sc_signal<bool > i_rgb_m_busy_req_0;
  sc_signal<sc_uint<8> > SobelFilter_N_Mux_8_2_24_4_24_out1;
  sc_signal<sc_uint<8> > SobelFilter_N_Mux_8_2_24_4_38_out1;
  sc_signal<sc_uint<8> > SobelFilter_N_Mux_8_2_23_4_36_out1;
  sc_signal<sc_uint<1> > SobelFilter_Lti3u2_4_32_out1;
  sc_signal<sc_uint<1> > SobelFilter_Lti3u2_4_31_out1;
  sc_signal<sc_uint<4> > global_state;
  sc_signal<sc_uint<1> > stall0;
  sc_signal<sc_uint<4> > SobelFilter_Add2u2Mul2i3u2_4_16_out1;
  sc_signal<sc_uint<8> > 
  SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1;
  SobelFilter_ROM_9X8_embossFilterMask *SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1;
  void drive_o_newB_data();
  void drive_o_newG_data();
  void drive_o_newR_data();
  void drive_i_rgb_m_busy_req_0();
  void drive_o_newR_m_req_m_trig_req();
  void drive_o_newG_m_req_m_trig_req();
  void drive_o_newB_m_req_m_trig_req();
  void drive_stall0();
  void drive_s_reg_20();
  void drive_s_reg_21();
  void drive_s_reg_22();
  void drive_s_reg_23();
  void drive_s_reg_24();
  void drive_s_reg_25();
  void drive_s_reg_26();
  void SobelFilter_Add2u2Mul2i3u2_4_16();
  void SobelFilter_Add2i1u2_4_17();
  void SobelFilter_Add2i1u2_4_18();
  void drive_SobelFilter_Add2Mul2s8u8s32_4_19_in3();
  void drive_SobelFilter_Add2Mul2s8u8s32_4_19_in2();
  void drive_SobelFilter_Add2Mul2s8u8s32_4_19_in1();
  void SobelFilter_Add2Mul2s8u8s32_4_19();
  void SobelFilter_Add2i128s32_4_20();
  void drive_SobelFilter_N_Mux_32_2_22_4_21_ctrl1();
  void SobelFilter_N_Mux_32_2_22_4_21();
  void SobelFilter_Lti255s32_4_22();
  void SobelFilter_N_Mux_8_2_23_4_23();
  void SobelFilter_N_Mux_8_2_24_4_24();
  void SobelFilter_Lti3u2_4_31();
  void SobelFilter_Lti3u2_4_32();
  void drive_SobelFilter_Add2Mul2s8u8s32_4_33_in2();
  void SobelFilter_Add2Mul2s8u8s32_4_33();
  void SobelFilter_Add2i128s32_4_34();
  void drive_SobelFilter_N_Mux_32_2_22_4_35_ctrl1();
  void SobelFilter_N_Mux_32_2_22_4_35();
  void SobelFilter_N_Mux_8_2_23_4_36();
  void SobelFilter_Lti255s32_4_37();
  void SobelFilter_N_Mux_8_2_24_4_38();
  void drive_global_state();
  void drive_global_state_next();
  void drive_gs_ctrl0();
  void drive_i_rgb_busy();
  void SobelFilter_Or_1U_9_4_39();
  void SobelFilter_And_1U_6_4_40();
  void SobelFilter_Not_1U_1_4_41();
  void SobelFilter_And_1U_6_4_42();
  void SobelFilter_Not_1U_1_4_43();
  void drive_i_rgb_m_unvalidated_req();
  void SobelFilter_N_Muxb_1_2_14_4_10();
  void drive_o_newR_vld();
  void SobelFilter_Or_1U_9_4_2();
  void drive_o_newR_m_unacked_req();
  void SobelFilter_And_1U_6_4_13();
  void SobelFilter_Xor_1U_11_4_1();
  void drive_o_newR_m_req_m_prev_trig_req();
  void SobelFilter_Not_1U_1_4_3();
  void drive_o_newG_vld();
  void SobelFilter_Or_1U_9_4_5();
  void drive_o_newG_m_unacked_req();
  void SobelFilter_And_1U_6_4_14();
  void SobelFilter_Xor_1U_11_4_4();
  void drive_o_newG_m_req_m_prev_trig_req();
  void SobelFilter_Not_1U_1_4_6();
  void drive_o_newB_vld();
  void SobelFilter_Or_1U_9_4_8();
  void drive_o_newB_m_unacked_req();
  void SobelFilter_And_1U_6_4_15();
  void SobelFilter_Xor_1U_11_4_7();
  void drive_o_newB_m_req_m_prev_trig_req();
  void SobelFilter_Not_1U_1_4_9();
};

#endif
