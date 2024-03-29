`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Nov 16 2019 23:11:55 CST (Nov 16 2019 15:11:55 UTC)

module SobelFilter_LessThan_32Sx9S_1U_4(in2, in1, out1);
  input [31:0] in2;
  input [8:0] in1;
  output out1;
  wire [31:0] in2;
  wire [8:0] in1;
  wire out1;
  wire gt_33_83_n_0, gt_33_83_n_1, gt_33_83_n_2, gt_33_83_n_3,
       gt_33_83_n_4, gt_33_83_n_5, gt_33_83_n_6, gt_33_83_n_7;
  wire gt_33_83_n_8, gt_33_83_n_9, gt_33_83_n_10, gt_33_83_n_11,
       gt_33_83_n_12, gt_33_83_n_13, gt_33_83_n_14, gt_33_83_n_15;
  wire gt_33_83_n_16, gt_33_83_n_17, gt_33_83_n_18, gt_33_83_n_19,
       gt_33_83_n_20, gt_33_83_n_21, gt_33_83_n_22, gt_33_83_n_23;
  wire gt_33_83_n_24, gt_33_83_n_25, gt_33_83_n_26, gt_33_83_n_27,
       gt_33_83_n_28, gt_33_83_n_29, gt_33_83_n_30, gt_33_83_n_31;
  wire gt_33_83_n_32, gt_33_83_n_33, gt_33_83_n_34, gt_33_83_n_35,
       gt_33_83_n_36, gt_33_83_n_37, gt_33_83_n_38, gt_33_83_n_39;
  wire gt_33_83_n_40, gt_33_83_n_41, gt_33_83_n_42, gt_33_83_n_43,
       gt_33_83_n_44, gt_33_83_n_45, gt_33_83_n_46, gt_33_83_n_47;
  wire gt_33_83_n_48, gt_33_83_n_49, gt_33_83_n_50, gt_33_83_n_51,
       gt_33_83_n_52, gt_33_83_n_53, gt_33_83_n_54, gt_33_83_n_55;
  wire gt_33_83_n_56, gt_33_83_n_57, gt_33_83_n_58, gt_33_83_n_59,
       gt_33_83_n_60, gt_33_83_n_61, gt_33_83_n_62, gt_33_83_n_63;
  wire gt_33_83_n_64, gt_33_83_n_65, gt_33_83_n_66, gt_33_83_n_67,
       gt_33_83_n_68, gt_33_83_n_69, gt_33_83_n_70, gt_33_83_n_71;
  wire gt_33_83_n_72, gt_33_83_n_73, gt_33_83_n_74, gt_33_83_n_75,
       gt_33_83_n_76, gt_33_83_n_77, gt_33_83_n_78;
  OAI21X1 gt_33_83_g1044(.A0 (gt_33_83_n_8), .A1 (gt_33_83_n_78), .B0
       (gt_33_83_n_21), .Y (out1));
  AOI31X1 gt_33_83_g1045(.A0 (gt_33_83_n_77), .A1 (gt_33_83_n_72), .A2
       (gt_33_83_n_74), .B0 (gt_33_83_n_8), .Y (gt_33_83_n_78));
  OAI211X1 gt_33_83_g1046(.A0 (gt_33_83_n_70), .A1 (gt_33_83_n_76), .B0
       (gt_33_83_n_65), .C0 (gt_33_83_n_66), .Y (gt_33_83_n_77));
  AOI211XL gt_33_83_g1047(.A0 (gt_33_83_n_69), .A1 (gt_33_83_n_75), .B0
       (gt_33_83_n_51), .C0 (gt_33_83_n_55), .Y (gt_33_83_n_76));
  NAND4XL gt_33_83_g1048(.A (gt_33_83_n_20), .B (gt_33_83_n_32), .C
       (gt_33_83_n_17), .D (gt_33_83_n_71), .Y (gt_33_83_n_75));
  NAND2X1 gt_33_83_g1049(.A (gt_33_83_n_66), .B (gt_33_83_n_73), .Y
       (gt_33_83_n_74));
  OAI221X1 gt_33_83_g1050(.A0 (in1[8]), .A1 (gt_33_83_n_46), .B0
       (gt_33_83_n_54), .B1 (gt_33_83_n_64), .C0 (gt_33_83_n_57), .Y
       (gt_33_83_n_73));
  AND4XL gt_33_83_g1051(.A (gt_33_83_n_21), .B (gt_33_83_n_41), .C
       (gt_33_83_n_60), .D (gt_33_83_n_68), .Y (gt_33_83_n_72));
  OAI211X1 gt_33_83_g1052(.A0 (gt_33_83_n_4), .A1 (in1[3]), .B0
       (gt_33_83_n_42), .C0 (gt_33_83_n_67), .Y (gt_33_83_n_71));
  OAI221X1 gt_33_83_g1053(.A0 (gt_33_83_n_55), .A1 (gt_33_83_n_62), .B0
       (in1[8]), .B1 (gt_33_83_n_47), .C0 (gt_33_83_n_58), .Y
       (gt_33_83_n_70));
  AOI221X1 gt_33_83_g1054(.A0 (in2[6]), .A1 (gt_33_83_n_40), .B0
       (gt_33_83_n_32), .B1 (gt_33_83_n_52), .C0 (gt_33_83_n_6), .Y
       (gt_33_83_n_69));
  NAND2BX1 gt_33_83_g1055(.AN (gt_33_83_n_56), .B (gt_33_83_n_63), .Y
       (gt_33_83_n_68));
  OAI211X1 gt_33_83_g1056(.A0 (gt_33_83_n_2), .A1 (in2[2]), .B0
       (gt_33_83_n_16), .C0 (gt_33_83_n_59), .Y (gt_33_83_n_67));
  NOR4X1 gt_33_83_g1057(.A (gt_33_83_n_13), .B (gt_33_83_n_31), .C
       (gt_33_83_n_7), .D (gt_33_83_n_56), .Y (gt_33_83_n_66));
  NOR4X1 gt_33_83_g1058(.A (gt_33_83_n_54), .B (gt_33_83_n_5), .C
       (gt_33_83_n_19), .D (gt_33_83_n_29), .Y (gt_33_83_n_65));
  OA21X1 gt_33_83_g1059(.A0 (in1[8]), .A1 (gt_33_83_n_50), .B0
       (gt_33_83_n_61), .Y (gt_33_83_n_64));
  OAI32X1 gt_33_83_g1060(.A0 (gt_33_83_n_49), .A1 (in1[8]), .A2
       (gt_33_83_n_31), .B0 (in1[8]), .B1 (gt_33_83_n_44), .Y
       (gt_33_83_n_63));
  OA21X1 gt_33_83_g1061(.A0 (in1[8]), .A1 (gt_33_83_n_45), .B0
       (gt_33_83_n_53), .Y (gt_33_83_n_62));
  OAI211X1 gt_33_83_g1062(.A0 (in2[17]), .A1 (gt_33_83_n_38), .B0
       (gt_33_83_n_0), .C0 (gt_33_83_n_30), .Y (gt_33_83_n_61));
  OAI211X1 gt_33_83_g1063(.A0 (in2[29]), .A1 (gt_33_83_n_39), .B0
       (gt_33_83_n_0), .C0 (gt_33_83_n_28), .Y (gt_33_83_n_60));
  OAI21X1 gt_33_83_g1064(.A0 (in1[1]), .A1 (gt_33_83_n_26), .B0
       (gt_33_83_n_48), .Y (gt_33_83_n_59));
  OAI211X1 gt_33_83_g1065(.A0 (in2[13]), .A1 (gt_33_83_n_37), .B0
       (gt_33_83_n_0), .C0 (gt_33_83_n_34), .Y (gt_33_83_n_58));
  OAI211X1 gt_33_83_g1066(.A0 (in2[21]), .A1 (gt_33_83_n_36), .B0
       (gt_33_83_n_0), .C0 (gt_33_83_n_33), .Y (gt_33_83_n_57));
  OAI211X1 gt_33_83_g1067(.A0 (in2[9]), .A1 (gt_33_83_n_35), .B0
       (gt_33_83_n_0), .C0 (gt_33_83_n_27), .Y (gt_33_83_n_53));
  OAI2BB1X1 gt_33_83_g1068(.A0N (in2[5]), .A1N (gt_33_83_n_3), .B0
       (gt_33_83_n_43), .Y (gt_33_83_n_52));
  OAI211X1 gt_33_83_g1069(.A0 (gt_33_83_n_0), .A1 (in2[8]), .B0
       (gt_33_83_n_11), .C0 (gt_33_83_n_27), .Y (gt_33_83_n_51));
  OAI211X1 gt_33_83_g1070(.A0 (gt_33_83_n_0), .A1 (in2[28]), .B0
       (gt_33_83_n_18), .C0 (gt_33_83_n_28), .Y (gt_33_83_n_56));
  OAI211X1 gt_33_83_g1071(.A0 (gt_33_83_n_0), .A1 (in2[12]), .B0
       (gt_33_83_n_15), .C0 (gt_33_83_n_34), .Y (gt_33_83_n_55));
  OAI211X1 gt_33_83_g1072(.A0 (gt_33_83_n_0), .A1 (in2[20]), .B0
       (gt_33_83_n_10), .C0 (gt_33_83_n_33), .Y (gt_33_83_n_54));
  AOI21X1 gt_33_83_g1073(.A0 (in2[18]), .A1 (gt_33_83_n_23), .B0
       (in2[19]), .Y (gt_33_83_n_50));
  AOI21X1 gt_33_83_g1074(.A0 (in2[24]), .A1 (gt_33_83_n_14), .B0
       (in2[25]), .Y (gt_33_83_n_49));
  OAI2BB1X1 gt_33_83_g1075(.A0N (in1[1]), .A1N (gt_33_83_n_26), .B0
       (in2[1]), .Y (gt_33_83_n_48));
  AOI21X1 gt_33_83_g1076(.A0 (in2[14]), .A1 (gt_33_83_n_22), .B0
       (in2[15]), .Y (gt_33_83_n_47));
  AOI21X1 gt_33_83_g1077(.A0 (in2[22]), .A1 (gt_33_83_n_12), .B0
       (in2[23]), .Y (gt_33_83_n_46));
  AOI21X1 gt_33_83_g1078(.A0 (in2[10]), .A1 (gt_33_83_n_9), .B0
       (in2[11]), .Y (gt_33_83_n_45));
  AOI21X1 gt_33_83_g1079(.A0 (in2[26]), .A1 (gt_33_83_n_25), .B0
       (in2[27]), .Y (gt_33_83_n_44));
  NAND3BXL gt_33_83_g1080(.AN (in1[4]), .B (in2[4]), .C
       (gt_33_83_n_20), .Y (gt_33_83_n_43));
  NAND3X1 gt_33_83_g1081(.A (in2[2]), .B (gt_33_83_n_2), .C
       (gt_33_83_n_16), .Y (gt_33_83_n_42));
  NAND3BXL gt_33_83_g1082(.AN (gt_33_83_n_8), .B (in2[30]), .C
       (gt_33_83_n_0), .Y (gt_33_83_n_41));
  NOR2X1 gt_33_83_g1083(.A (in1[6]), .B (gt_33_83_n_24), .Y
       (gt_33_83_n_40));
  AND2XL gt_33_83_g1084(.A (in2[28]), .B (gt_33_83_n_18), .Y
       (gt_33_83_n_39));
  NOR2BX1 gt_33_83_g1085(.AN (in2[16]), .B (gt_33_83_n_19), .Y
       (gt_33_83_n_38));
  AND2XL gt_33_83_g1086(.A (in2[12]), .B (gt_33_83_n_15), .Y
       (gt_33_83_n_37));
  AND2XL gt_33_83_g1087(.A (in2[20]), .B (gt_33_83_n_10), .Y
       (gt_33_83_n_36));
  AND2XL gt_33_83_g1088(.A (in2[8]), .B (gt_33_83_n_11), .Y
       (gt_33_83_n_35));
  INVX1 gt_33_83_g1089(.A (gt_33_83_n_29), .Y (gt_33_83_n_30));
  OA21X1 gt_33_83_g1090(.A0 (gt_33_83_n_0), .A1 (in2[14]), .B0
       (gt_33_83_n_22), .Y (gt_33_83_n_34));
  OA21X1 gt_33_83_g1091(.A0 (gt_33_83_n_0), .A1 (in2[22]), .B0
       (gt_33_83_n_12), .Y (gt_33_83_n_33));
  AOI21X1 gt_33_83_g1092(.A0 (in1[6]), .A1 (gt_33_83_n_1), .B0
       (gt_33_83_n_24), .Y (gt_33_83_n_32));
  OAI21X1 gt_33_83_g1093(.A0 (gt_33_83_n_0), .A1 (in2[26]), .B0
       (gt_33_83_n_25), .Y (gt_33_83_n_31));
  OAI21X1 gt_33_83_g1094(.A0 (gt_33_83_n_0), .A1 (in2[18]), .B0
       (gt_33_83_n_23), .Y (gt_33_83_n_29));
  AOI2BB1X1 gt_33_83_g1095(.A0N (gt_33_83_n_0), .A1N (in2[30]), .B0
       (gt_33_83_n_8), .Y (gt_33_83_n_28));
  OA21X1 gt_33_83_g1096(.A0 (gt_33_83_n_0), .A1 (in2[10]), .B0
       (gt_33_83_n_9), .Y (gt_33_83_n_27));
  NAND2BXL gt_33_83_g1097(.AN (in2[4]), .B (in1[4]), .Y
       (gt_33_83_n_17));
  NOR2BX1 gt_33_83_g1098(.AN (in1[0]), .B (in2[0]), .Y (gt_33_83_n_26));
  NAND2BX1 gt_33_83_g1099(.AN (in2[27]), .B (in1[8]), .Y
       (gt_33_83_n_25));
  NOR2BX1 gt_33_83_g1100(.AN (in1[7]), .B (in2[7]), .Y (gt_33_83_n_24));
  NAND2BX1 gt_33_83_g1101(.AN (in2[19]), .B (in1[8]), .Y
       (gt_33_83_n_23));
  NAND2BXL gt_33_83_g1102(.AN (in2[15]), .B (in1[8]), .Y
       (gt_33_83_n_22));
  NAND2X1 gt_33_83_g1103(.A (in2[31]), .B (gt_33_83_n_0), .Y
       (gt_33_83_n_21));
  NAND2BX1 gt_33_83_g1104(.AN (in2[5]), .B (in1[5]), .Y
       (gt_33_83_n_20));
  NOR2X1 gt_33_83_g1105(.A (gt_33_83_n_0), .B (in2[17]), .Y
       (gt_33_83_n_19));
  NAND2BX1 gt_33_83_g1106(.AN (in2[29]), .B (in1[8]), .Y
       (gt_33_83_n_18));
  INVX1 gt_33_83_g1107(.A (gt_33_83_n_13), .Y (gt_33_83_n_14));
  NOR2X1 gt_33_83_g1108(.A (gt_33_83_n_0), .B (in2[24]), .Y
       (gt_33_83_n_7));
  NOR2BX1 gt_33_83_g1109(.AN (in2[7]), .B (in1[7]), .Y (gt_33_83_n_6));
  NOR2X1 gt_33_83_g1110(.A (gt_33_83_n_0), .B (in2[16]), .Y
       (gt_33_83_n_5));
  NAND2X1 gt_33_83_g1111(.A (in1[3]), .B (gt_33_83_n_4), .Y
       (gt_33_83_n_16));
  NAND2BX1 gt_33_83_g1112(.AN (in2[13]), .B (in1[8]), .Y
       (gt_33_83_n_15));
  NOR2X1 gt_33_83_g1113(.A (gt_33_83_n_0), .B (in2[25]), .Y
       (gt_33_83_n_13));
  NAND2BXL gt_33_83_g1114(.AN (in2[23]), .B (in1[8]), .Y
       (gt_33_83_n_12));
  NAND2BX1 gt_33_83_g1115(.AN (in2[9]), .B (in1[8]), .Y
       (gt_33_83_n_11));
  NAND2BXL gt_33_83_g1116(.AN (in2[21]), .B (in1[8]), .Y
       (gt_33_83_n_10));
  NAND2BX1 gt_33_83_g1117(.AN (in2[11]), .B (in1[8]), .Y
       (gt_33_83_n_9));
  NOR2X1 gt_33_83_g1118(.A (gt_33_83_n_0), .B (in2[31]), .Y
       (gt_33_83_n_8));
  INVX1 gt_33_83_g1119(.A (in2[3]), .Y (gt_33_83_n_4));
  INVX1 gt_33_83_g1120(.A (in1[5]), .Y (gt_33_83_n_3));
  INVX1 gt_33_83_g1121(.A (in1[2]), .Y (gt_33_83_n_2));
  INVX1 gt_33_83_g1122(.A (in2[6]), .Y (gt_33_83_n_1));
  INVX2 gt_33_83_g1123(.A (in1[8]), .Y (gt_33_83_n_0));
endmodule


