`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Nov 16 2019 23:11:59 CST (Nov 16 2019 15:11:59 UTC)

module SobelFilter_LessThan_2Ux2U_1U_4(in2, in1, out1);
  input [1:0] in2, in1;
  output out1;
  wire [1:0] in2, in1;
  wire out1;
  wire gt_33_21_n_0, gt_33_21_n_1, gt_33_21_n_2;
  OAI32X1 gt_33_21_g41(.A0 (in2[0]), .A1 (gt_33_21_n_1), .A2
       (gt_33_21_n_2), .B0 (gt_33_21_n_0), .B1 (in2[1]), .Y (out1));
  NOR2BX1 gt_33_21_g42(.AN (in2[1]), .B (in1[1]), .Y (gt_33_21_n_2));
  INVX1 gt_33_21_g43(.A (in1[0]), .Y (gt_33_21_n_1));
  INVX1 gt_33_21_g44(.A (in1[1]), .Y (gt_33_21_n_0));
endmodule


