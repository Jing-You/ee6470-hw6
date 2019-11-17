// Generated by stratus_hls 17.21-s100  (88813.070850)
// Sat Nov 16 23:15:37 2019
// from ../SobelFilter.cpp

`timescale 1ps / 1ps

      
module SobelFilter(i_clk, i_rst, i_rgb_busy, i_rgb_vld, i_rgb_data, o_newR_busy, o_newR_vld, o_newR_data, o_newG_busy, o_newG_vld, o_newG_data, o_newB_busy, o_newB_vld, o_newB_data);

      input i_clk;
      input i_rst;
      input i_rgb_vld;
      input [23:0] i_rgb_data;
      input o_newR_busy;
      input o_newG_busy;
      input o_newB_busy;
      output i_rgb_busy;
      output o_newR_vld;
      output [7:0] o_newR_data;
      reg [7:0] o_newR_data;
      output o_newG_vld;
      output [7:0] o_newG_data;
      reg [7:0] o_newG_data;
      output o_newB_vld;
      output [7:0] o_newB_data;
      reg [7:0] o_newB_data;
      reg o_newB_m_req_m_prev_trig_req;
      reg o_newB_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_4_7_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_8_out1;
      reg o_newG_m_req_m_prev_trig_req;
      reg o_newG_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_4_4_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_5_out1;
      reg o_newR_m_req_m_prev_trig_req;
      reg o_newR_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_4_1_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_2_out1;
      reg SobelFilter_N_Muxb_1_2_4_4_10_out1;
      wire SobelFilter_And_1Ux1U_1U_4_46_out1;
      wire SobelFilter_Not_1U_1U_4_45_out1;
      reg i_rgb_m_unvalidated_req;
      wire SobelFilter_Or_1Ux1U_1U_4_43_out1;
      wire SobelFilter_And_1Ux1U_1U_4_44_out1;
      reg[3:0] global_state_next;
      wire SobelFilter_N_Mux_32_2_1_4_32_ctrl1;
      /*signed*/reg[31:0] SobelFilter_LessThan_32Sx9S_1U_4_31_in2;
      reg gs_ctrl7;
      wire SobelFilter_N_Mux_32_2_1_4_30_ctrl1;
      /*signed*/reg[15:0] SobelFilter_Add_32Sx16S_32S_4_23_in1;
      /*signed*/wire[15:0] SobelFilter_Mul_8Sx8U_16S_4_22_out1;
      wire[7:0] SobelFilter_Mul_8Sx8U_16S_4_22_in1;
      /*signed*/reg[15:0] SobelFilter_Add_32Sx16S_32S_4_21_in1;
      reg gs_ctrl5;
      /*signed*/reg[31:0] SobelFilter_Add_32Sx16S_32S_4_21_in2;
      reg gs_ctrl4;
      /*signed*/wire[15:0] SobelFilter_Mul_8Sx8U_16S_4_20_out1;
      reg[7:0] SobelFilter_Mul_8Sx8U_16S_4_20_in1;
      /*signed*/reg[7:0] SobelFilter_Mul_8Sx8U_16S_4_20_in2;
      reg gs_ctrl2;
      /*signed*/wire[4:0] SobelFilter_Add_5Sx2U_5S_4_18_out1;
      /*signed*/wire[4:0] SobelFilter_Add_5Sx2U_5S_4_18_in2;
      reg[1:0] SobelFilter_Mul_2Ux2U_4U_4_17_in2;
      reg[1:0] SobelFilter_Add_2Ux2U_2U_4_16_in2;
      reg gs_ctrl0;
      wire SobelFilter_LessThan_32Sx9S_1U_4_31_out1;
      wire SobelFilter_LessThan_2Ux2U_1U_4_26_out1;
      reg[23:0] s_reg_36;
      wire[1:0] SobelFilter_Add_2Ux2U_2U_4_19_out1;
      reg[1:0] s_reg_35;
      reg[31:0] s_reg_34;
      /*signed*/wire[31:0] SobelFilter_Add_32Sx16S_32S_4_23_out1;
      reg[31:0] s_reg_33;
      reg[31:0] SobelFilter_N_Mux_32_2_1_4_30_out1;
      reg[31:0] SobelFilter_N_Mux_32_2_1_4_32_out1;
      /*signed*/wire[31:0] SobelFilter_Add_32Sx16S_32S_4_21_out1;
      reg[31:0] s_reg_32;
      wire[1:0] SobelFilter_Add_2Ux2U_2U_4_16_out1;
      reg[1:0] s_reg_31;
      reg[1:0] s_reg_30;
      wire SobelFilter_And_1Ux1U_1U_4_13_out1;
      wire SobelFilter_And_1Ux1U_1U_4_14_out1;
      wire SobelFilter_And_1Ux1U_1U_4_15_out1;
      wire SobelFilter_Not_1U_1U_4_47_out1;
      wire SobelFilter_Not_1U_1U_4_9_out1;
      reg o_newB_m_req_m_trig_req;
      wire SobelFilter_Not_1U_1U_4_6_out1;
      reg o_newG_m_req_m_trig_req;
      wire SobelFilter_Not_1U_1U_4_3_out1;
      reg o_newR_m_req_m_trig_req;
      reg i_rgb_m_busy_req_0;
      reg[7:0] SobelFilter_N_Mux_8_2_3_4_34_out1;
      wire[3:0] SobelFilter_Mul_2Ux2U_4U_4_17_out1;
      reg[7:0] SobelFilter_N_Mux_8_2_3_4_41_out1;
      reg[7:0] SobelFilter_N_Mux_8_2_2_4_35_out1;
      reg s_reg_37;
      wire SobelFilter_LessThan_2Ux2U_1U_4_27_out1;
      reg[7:0] SobelFilter_N_Mux_8_2_3_4_42_out1;
      reg[7:0] SobelFilter_N_Mux_8_2_2_4_33_out1;
      reg[3:0] global_state;
      reg stall0;
      wire[3:0] SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_in1;
      wire[7:0] SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1;

         SobelFilter_ROM_9X8_embossFilterMask SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1(
                                                .in1( SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_in1 ),
                                                .out1( SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1 ),
                                                .clk( i_clk )
                                              );

         // resource: mux_8bx2i
         // resource: regr_8
         always @(posedge i_clk)
          begin :drive_o_newB_data
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd05: begin
                     o_newB_data <= SobelFilter_N_Mux_8_2_2_4_33_out1;
                  end
                  
                  4'd07: begin
                     o_newB_data <= SobelFilter_N_Mux_8_2_3_4_42_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_8bx2i
         // resource: regr_8
         always @(posedge i_clk)
          begin :drive_o_newG_data
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd04: begin
                     if (!s_reg_37 && !SobelFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                        o_newG_data <= SobelFilter_N_Mux_8_2_2_4_35_out1;
                     end
                  end
                  
                  4'd06: begin
                     o_newG_data <= SobelFilter_N_Mux_8_2_3_4_41_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_8bx3i
         // resource: regr_8
         always @(posedge i_clk)
          begin :drive_o_newR_data
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     o_newR_data <= {4'b0000, SobelFilter_Mul_2Ux2U_4U_4_17_out1};
                  end
                  
                  4'd02: begin
                     o_newR_data <= SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1;
                  end
                  
                  4'd04: begin
                     if (s_reg_37) begin
                        o_newR_data <= {4'b0000, SobelFilter_Mul_2Ux2U_4U_4_17_out1};
                     end
                     else begin
                        if (SobelFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                           o_newR_data <= {4'b0000, SobelFilter_Mul_2Ux2U_4U_4_17_out1};
                        end
                        else begin
                           o_newR_data <= SobelFilter_N_Mux_8_2_3_4_34_out1;
                        end
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_i_rgb_m_busy_req_0
            if (i_rst == 1'b0) begin
               i_rgb_m_busy_req_0 <= 1'd1;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state) 

                     4'd00, 4'd09: begin
                        i_rgb_m_busy_req_0 <= 1'd0;
                     end
                     
                     4'd01: begin
                        i_rgb_m_busy_req_0 <= 1'd1;
                     end
                     
                     4'd04: begin
                        if (s_reg_37) begin
                           i_rgb_m_busy_req_0 <= 1'd0;
                        end
                        else begin
                           if (SobelFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                              i_rgb_m_busy_req_0 <= 1'd0;
                           end
                        end
                     end
                     
                  endcase

               end
            end
         end

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newR_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_newR_m_req_m_trig_req <= 1'd0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state) 

                     4'd05: begin
                        o_newR_m_req_m_trig_req <= SobelFilter_Not_1U_1U_4_3_out1;
                     end
                     
                  endcase

               end
            end
         end

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newG_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_newG_m_req_m_trig_req <= 1'd0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state) 

                     4'd06: begin
                        o_newG_m_req_m_trig_req <= SobelFilter_Not_1U_1U_4_6_out1;
                     end
                     
                  endcase

               end
            end
         end

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newB_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_newB_m_req_m_trig_req <= 1'd0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state) 

                     4'd07: begin
                        o_newB_m_req_m_trig_req <= SobelFilter_Not_1U_1U_4_9_out1;
                     end
                     
                  endcase

               end
            end
         end

         // resource: mux_1bx5i
         always @(SobelFilter_And_1Ux1U_1U_4_13_out1 or SobelFilter_And_1Ux1U_1U_4_14_out1 or SobelFilter_And_1Ux1U_1U_4_15_out1 or SobelFilter_Not_1U_1U_4_47_out1 or global_state)
          begin :drive_stall0
            case (global_state) 

               4'd01: begin
                  stall0 = SobelFilter_Not_1U_1U_4_47_out1;
               end
               
               4'd06: begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_13_out1;
               end
               
               4'd07: begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_14_out1;
               end
               
               4'd08: begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_15_out1;
               end
               
               default: begin
                  stall0 = 1'b0;
               end
               
            endcase

         end

         // resource: mux_2bx2i
         // resource: regr_2
         always @(posedge i_clk)
          begin :drive_s_reg_30
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_30 <= 2'd0;
                  end
                  
                  4'd04: begin
                     if (s_reg_37) begin
                     end
                     else begin
                        s_reg_30 <= s_reg_31;
                     end
                  end
                  
               endcase

            end
         end

         // resource: regr_2
         always @(posedge i_clk)
          begin :drive_s_reg_31
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_31 <= SobelFilter_Add_2Ux2U_2U_4_16_out1;
                  end
                  
                  4'd04: begin
                     if (s_reg_37) begin
                     end
                     else begin
                        s_reg_31 <= SobelFilter_Add_2Ux2U_2U_4_16_out1;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_32bx4i
         // resource: regr_32
         always @(posedge i_clk)
          begin :drive_s_reg_32
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_32 <= 32'd0000000000;
                  end
                  
                  4'd02: begin
                     s_reg_32 <= SobelFilter_Add_32Sx16S_32S_4_21_out1;
                  end
                  
                  4'd04: begin
                     if (s_reg_37) begin
                     end
                     else begin
                        if (SobelFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                        end
                        else begin
                           s_reg_32 <= SobelFilter_N_Mux_32_2_1_4_32_out1;
                        end
                     end
                  end
                  
                  4'd05: begin
                     s_reg_32 <= SobelFilter_N_Mux_32_2_1_4_30_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_32bx2i
         // resource: regr_32
         always @(posedge i_clk)
          begin :drive_s_reg_33
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_33 <= 32'd0000000000;
                  end
                  
                  4'd02: begin
                     s_reg_33 <= SobelFilter_Add_32Sx16S_32S_4_23_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_32bx2i
         // resource: regr_32
         always @(posedge i_clk)
          begin :drive_s_reg_34
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_34 <= 32'd0000000000;
                  end
                  
                  4'd03: begin
                     s_reg_34 <= SobelFilter_Add_32Sx16S_32S_4_21_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_2bx2i
         // resource: regr_2
         always @(posedge i_clk)
          begin :drive_s_reg_35
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd00, 4'd09: begin
                     s_reg_35 <= 2'd0;
                  end
                  
                  4'd01: begin
                     s_reg_35 <= SobelFilter_Add_2Ux2U_2U_4_19_out1;
                  end
                  
                  4'd04: begin
                     if (s_reg_37) begin
                     end
                     else begin
                        s_reg_35 <= 2'd0;
                     end
                  end
                  
               endcase

            end
         end

         // resource: regr_24
         always @(posedge i_clk)
          begin :drive_s_reg_36
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd01: begin
                     s_reg_36 <= i_rgb_data;
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_s_reg_37
            if (stall0) begin
            end
            else begin
               case (global_state) 

                  4'd03: begin
                     s_reg_37 <= SobelFilter_LessThan_2Ux2U_1U_4_26_out1;
                  end
                  
                  4'd05, 4'd06: begin
                     s_reg_37 <= SobelFilter_LessThan_32Sx9S_1U_4_31_out1;
                  end
                  
               endcase

            end
         end

         // resource: mux_2bx2i
         always @(s_reg_31 or gs_ctrl0)
          begin :drive_SobelFilter_Add_2Ux2U_2U_4_16_in2
            if (gs_ctrl0) begin
               SobelFilter_Add_2Ux2U_2U_4_16_in2 = s_reg_31;
            end
            else begin
               SobelFilter_Add_2Ux2U_2U_4_16_in2 = 2'd0;
            end
         end

         // resource: SobelFilter_Add_2Ux2U_2U_4  instance: SobelFilter_Add_2Ux2U_2U_4_16
         assign SobelFilter_Add_2Ux2U_2U_4_16_out1 = SobelFilter_Add_2Ux2U_2U_4_16_in2 + 2'd1;

         // resource: mux_2bx2i
         always @(s_reg_35 or s_reg_37 or gs_ctrl0)
          begin :drive_SobelFilter_Mul_2Ux2U_4U_4_17_in2
            if (gs_ctrl0) begin
               if (s_reg_37) begin
                  SobelFilter_Mul_2Ux2U_4U_4_17_in2 = s_reg_35;
               end
               else begin
                  SobelFilter_Mul_2Ux2U_4U_4_17_in2 = 2'd0;
               end
            end
            else begin
               SobelFilter_Mul_2Ux2U_4U_4_17_in2 = 2'd0;
            end
         end

         // resource: SobelFilter_Mul_2Ux2U_4U_4  instance: SobelFilter_Mul_2Ux2U_4U_4_17
         assign SobelFilter_Mul_2Ux2U_4U_4_17_out1 = {2'b00, SobelFilter_Mul_2Ux2U_4U_4_17_in2}*4'd03;

         // thread: drive_SobelFilter_Add_5Sx2U_5S_4_18_in2
         assign SobelFilter_Add_5Sx2U_5S_4_18_in2 = {1'b0, o_newR_data[3:0]};

         // resource: SobelFilter_Add_5Sx2U_5S_4  instance: SobelFilter_Add_5Sx2U_5S_4_18
         assign SobelFilter_Add_5Sx2U_5S_4_18_out1 = SobelFilter_Add_5Sx2U_5S_4_18_in2 + {3'b000, s_reg_30};

         // resource: SobelFilter_Add_2Ux2U_2U_4  instance: SobelFilter_Add_2Ux2U_2U_4_19
         assign SobelFilter_Add_2Ux2U_2U_4_19_out1 = s_reg_35 + 2'd1;

         // thread: drive_SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_in1
         assign SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_in1 = SobelFilter_Add_5Sx2U_5S_4_18_out1[3:0];

         // resource: mux_8bx2i
         always @(o_newR_data or SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1 or gs_ctrl2)
          begin :drive_SobelFilter_Mul_8Sx8U_16S_4_20_in2
            if (gs_ctrl2) begin
               SobelFilter_Mul_8Sx8U_16S_4_20_in2 = o_newR_data;
            end
            else begin
               SobelFilter_Mul_8Sx8U_16S_4_20_in2 = SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1;
            end
         end

         // resource: mux_8bx2i
         always @(s_reg_36[23:16] or s_reg_36[7:0] or gs_ctrl2)
          begin :drive_SobelFilter_Mul_8Sx8U_16S_4_20_in1
            if (gs_ctrl2) begin
               SobelFilter_Mul_8Sx8U_16S_4_20_in1 = s_reg_36[23:16];
            end
            else begin
               SobelFilter_Mul_8Sx8U_16S_4_20_in1 = s_reg_36[7:0];
            end
         end

         // resource: SobelFilter_Mul_8Sx8U_16S_4  instance: SobelFilter_Mul_8Sx8U_16S_4_20
         assign SobelFilter_Mul_8Sx8U_16S_4_20_out1 = {{ 8 {SobelFilter_Mul_8Sx8U_16S_4_20_in2[7]}}, SobelFilter_Mul_8Sx8U_16S_4_20_in2}*{8'b00000000, SobelFilter_Mul_8Sx8U_16S_4_20_in1};

         // resource: mux_32bx2i
         always @(s_reg_32 or s_reg_34 or gs_ctrl4)
          begin :drive_SobelFilter_Add_32Sx16S_32S_4_21_in2
            if (gs_ctrl4) begin
               SobelFilter_Add_32Sx16S_32S_4_21_in2 = s_reg_34;
            end
            else begin
               SobelFilter_Add_32Sx16S_32S_4_21_in2 = s_reg_32;
            end
         end

         // resource: mux_16bx2i
         always @(SobelFilter_Mul_8Sx8U_16S_4_20_out1 or gs_ctrl5)
          begin :drive_SobelFilter_Add_32Sx16S_32S_4_21_in1
            if (gs_ctrl5) begin
               SobelFilter_Add_32Sx16S_32S_4_21_in1 = 16'd00128;
            end
            else begin
               SobelFilter_Add_32Sx16S_32S_4_21_in1 = SobelFilter_Mul_8Sx8U_16S_4_20_out1;
            end
         end

         // resource: SobelFilter_Add_32Sx16S_32S_4  instance: SobelFilter_Add_32Sx16S_32S_4_21
         assign SobelFilter_Add_32Sx16S_32S_4_21_out1 = SobelFilter_Add_32Sx16S_32S_4_21_in2 + {{ 16 {SobelFilter_Add_32Sx16S_32S_4_21_in1[15]}}, SobelFilter_Add_32Sx16S_32S_4_21_in1};

         // thread: drive_SobelFilter_Mul_8Sx8U_16S_4_22_in1
         assign SobelFilter_Mul_8Sx8U_16S_4_22_in1 = s_reg_36[15:8];

         // resource: SobelFilter_Mul_8Sx8U_16S_4  instance: SobelFilter_Mul_8Sx8U_16S_4_22
         assign SobelFilter_Mul_8Sx8U_16S_4_22_out1 = {{ 8 {SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1[7]}}, SobelFilter_ROM_9X8_embossFilterMask_embossFilterMask_1_out1}*{8'b00000000, SobelFilter_Mul_8Sx8U_16S_4_22_in1};

         // resource: mux_16bx2i
         always @(SobelFilter_Mul_8Sx8U_16S_4_22_out1 or gs_ctrl0)
          begin :drive_SobelFilter_Add_32Sx16S_32S_4_23_in1
            if (gs_ctrl0) begin
               SobelFilter_Add_32Sx16S_32S_4_23_in1 = 16'd00128;
            end
            else begin
               SobelFilter_Add_32Sx16S_32S_4_23_in1 = SobelFilter_Mul_8Sx8U_16S_4_22_out1;
            end
         end

         // resource: SobelFilter_Add_32Sx16S_32S_4  instance: SobelFilter_Add_32Sx16S_32S_4_23
         assign SobelFilter_Add_32Sx16S_32S_4_23_out1 = s_reg_33 + {{ 16 {SobelFilter_Add_32Sx16S_32S_4_23_in1[15]}}, SobelFilter_Add_32Sx16S_32S_4_23_in1};

         // resource: SobelFilter_LessThan_2Ux2U_1U_4  instance: SobelFilter_LessThan_2Ux2U_1U_4_26
         assign SobelFilter_LessThan_2Ux2U_1U_4_26_out1 = s_reg_35 < 2'd3;

         // resource: SobelFilter_LessThan_2Ux2U_1U_4  instance: SobelFilter_LessThan_2Ux2U_1U_4_27
         assign SobelFilter_LessThan_2Ux2U_1U_4_27_out1 = s_reg_31 < 2'd3;

         // thread: drive_SobelFilter_N_Mux_32_2_1_4_30_ctrl1
         assign SobelFilter_N_Mux_32_2_1_4_30_ctrl1 = SobelFilter_Add_32Sx16S_32S_4_21_out1[31];

         // resource:SobelFilter_N_Mux_32_2_1_4
         always @(SobelFilter_Add_32Sx16S_32S_4_21_out1 or SobelFilter_N_Mux_32_2_1_4_30_ctrl1)
          begin :SobelFilter_N_Mux_32_2_1_4_30
            if (SobelFilter_N_Mux_32_2_1_4_30_ctrl1) begin
               SobelFilter_N_Mux_32_2_1_4_30_out1 = 32'd0000000000;
            end
            else begin
               SobelFilter_N_Mux_32_2_1_4_30_out1 = SobelFilter_Add_32Sx16S_32S_4_21_out1;
            end
         end

         // resource: mux_32bx2i
         always @(s_reg_32 or SobelFilter_N_Mux_32_2_1_4_30_out1 or gs_ctrl7)
          begin :drive_SobelFilter_LessThan_32Sx9S_1U_4_31_in2
            if (gs_ctrl7) begin
               SobelFilter_LessThan_32Sx9S_1U_4_31_in2 = s_reg_32;
            end
            else begin
               SobelFilter_LessThan_32Sx9S_1U_4_31_in2 = SobelFilter_N_Mux_32_2_1_4_30_out1;
            end
         end

         // resource: SobelFilter_LessThan_32Sx9S_1U_4  instance: SobelFilter_LessThan_32Sx9S_1U_4_31
         assign SobelFilter_LessThan_32Sx9S_1U_4_31_out1 = SobelFilter_LessThan_32Sx9S_1U_4_31_in2[31] ^ SobelFilter_LessThan_32Sx9S_1U_4_31_in2 < 32'd0000000255;

         // thread: drive_SobelFilter_N_Mux_32_2_1_4_32_ctrl1
         assign SobelFilter_N_Mux_32_2_1_4_32_ctrl1 = SobelFilter_Add_32Sx16S_32S_4_23_out1[31];

         // resource:SobelFilter_N_Mux_32_2_1_4
         always @(SobelFilter_Add_32Sx16S_32S_4_23_out1 or SobelFilter_N_Mux_32_2_1_4_32_ctrl1)
          begin :SobelFilter_N_Mux_32_2_1_4_32
            if (SobelFilter_N_Mux_32_2_1_4_32_ctrl1) begin
               SobelFilter_N_Mux_32_2_1_4_32_out1 = 32'd0000000000;
            end
            else begin
               SobelFilter_N_Mux_32_2_1_4_32_out1 = SobelFilter_Add_32Sx16S_32S_4_23_out1;
            end
         end

         // resource:SobelFilter_N_Mux_8_2_2_4
         always @(SobelFilter_Add_32Sx16S_32S_4_21_out1[7:0] or SobelFilter_N_Mux_32_2_1_4_30_ctrl1)
          begin :SobelFilter_N_Mux_8_2_2_4_33
            if (SobelFilter_N_Mux_32_2_1_4_30_ctrl1) begin
               SobelFilter_N_Mux_8_2_2_4_33_out1 = 8'd000;
            end
            else begin
               SobelFilter_N_Mux_8_2_2_4_33_out1 = SobelFilter_Add_32Sx16S_32S_4_21_out1[7:0];
            end
         end

         // resource:SobelFilter_N_Mux_8_2_3_4
         always @(SobelFilter_LessThan_32Sx9S_1U_4_31_out1 or SobelFilter_N_Mux_8_2_2_4_33_out1)
          begin :SobelFilter_N_Mux_8_2_3_4_34
            if (SobelFilter_LessThan_32Sx9S_1U_4_31_out1) begin
               SobelFilter_N_Mux_8_2_3_4_34_out1 = SobelFilter_N_Mux_8_2_2_4_33_out1;
            end
            else begin
               SobelFilter_N_Mux_8_2_3_4_34_out1 = 8'd255;
            end
         end

         // resource:SobelFilter_N_Mux_8_2_2_4
         always @(SobelFilter_Add_32Sx16S_32S_4_23_out1[7:0] or SobelFilter_N_Mux_32_2_1_4_32_ctrl1)
          begin :SobelFilter_N_Mux_8_2_2_4_35
            if (SobelFilter_N_Mux_32_2_1_4_32_ctrl1) begin
               SobelFilter_N_Mux_8_2_2_4_35_out1 = 8'd000;
            end
            else begin
               SobelFilter_N_Mux_8_2_2_4_35_out1 = SobelFilter_Add_32Sx16S_32S_4_23_out1[7:0];
            end
         end

         // resource:SobelFilter_N_Mux_8_2_3_4
         always @(o_newG_data or s_reg_37)
          begin :SobelFilter_N_Mux_8_2_3_4_41
            if (s_reg_37) begin
               SobelFilter_N_Mux_8_2_3_4_41_out1 = o_newG_data;
            end
            else begin
               SobelFilter_N_Mux_8_2_3_4_41_out1 = 8'd255;
            end
         end

         // resource:SobelFilter_N_Mux_8_2_3_4
         always @(o_newB_data or s_reg_37)
          begin :SobelFilter_N_Mux_8_2_3_4_42
            if (s_reg_37) begin
               SobelFilter_N_Mux_8_2_3_4_42_out1 = o_newB_data;
            end
            else begin
               SobelFilter_N_Mux_8_2_3_4_42_out1 = 8'd255;
            end
         end

         // resource: regr_4
         always @(posedge i_clk)
          begin :drive_global_state
            if (i_rst == 1'b0) begin
               global_state <= 4'd00;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  global_state <= global_state_next;
               end
            end
         end

         // resource: mux_4bx2i
         always @(s_reg_37 or SobelFilter_LessThan_2Ux2U_1U_4_27_out1 or global_state)
          begin :drive_global_state_next
            case (global_state) 

               4'd00, 4'd09: begin
                  global_state_next = 4'd01;
               end
               
               4'd04: begin
                  if (s_reg_37) begin
                     global_state_next = 4'd01;
                  end
                  else begin
                     if (SobelFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                        global_state_next = 4'd01;
                     end
                     else begin
                        global_state_next = global_state + 4'd01;
                     end
                  end
               end
               
               default: begin
                  global_state_next = global_state + 4'd01;
               end
               
            endcase

         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl0
            if (i_rst == 1'b0) begin
               gs_ctrl0 <= 1'b0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state_next) 

                     4'd04: begin
                        gs_ctrl0 <= 1'b1;
                     end
                     
                     default: begin
                        gs_ctrl0 <= 1'b0;
                     end
                     
                  endcase

               end
            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl2
            if (i_rst == 1'b0) begin
               gs_ctrl2 <= 1'b0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state_next) 

                     4'd03: begin
                        gs_ctrl2 <= 1'b1;
                     end
                     
                     default: begin
                        gs_ctrl2 <= 1'b0;
                     end
                     
                  endcase

               end
            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl4
            if (i_rst == 1'b0) begin
               gs_ctrl4 <= 1'b0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state_next) 

                     4'd03, 4'd05: begin
                        gs_ctrl4 <= 1'b1;
                     end
                     
                     default: begin
                        gs_ctrl4 <= 1'b0;
                     end
                     
                  endcase

               end
            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl5
            if (i_rst == 1'b0) begin
               gs_ctrl5 <= 1'b0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state_next) 

                     4'd04, 4'd05: begin
                        gs_ctrl5 <= 1'b1;
                     end
                     
                     default: begin
                        gs_ctrl5 <= 1'b0;
                     end
                     
                  endcase

               end
            end
         end

         // resource: mux_1bx2i
         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl7
            if (i_rst == 1'b0) begin
               gs_ctrl7 <= 1'b0;
            end
            else begin
               if (stall0) begin
               end
               else begin
                  case (global_state_next) 

                     4'd05, 4'd06: begin
                        gs_ctrl7 <= 1'b1;
                     end
                     
                     default: begin
                        gs_ctrl7 <= 1'b0;
                     end
                     
                  endcase

               end
            end
         end

         // thread: drive_i_rgb_busy
         assign i_rgb_busy = SobelFilter_And_1Ux1U_1U_4_44_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_43
         assign SobelFilter_Or_1Ux1U_1U_4_43_out1 = i_rgb_m_unvalidated_req | i_rgb_vld;

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_44
         assign SobelFilter_And_1Ux1U_1U_4_44_out1 = SobelFilter_Or_1Ux1U_1U_4_43_out1 & i_rgb_m_busy_req_0;

         // resource: SobelFilter_Not_1U_1U_4  instance: SobelFilter_Not_1U_1U_4_45
         assign SobelFilter_Not_1U_1U_4_45_out1 = !SobelFilter_And_1Ux1U_1U_4_44_out1;

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_46
         assign SobelFilter_And_1Ux1U_1U_4_46_out1 = SobelFilter_Not_1U_1U_4_45_out1 & i_rgb_vld;

         // resource: SobelFilter_Not_1U_1U_4  instance: SobelFilter_Not_1U_1U_4_47
         assign SobelFilter_Not_1U_1U_4_47_out1 = !SobelFilter_And_1Ux1U_1U_4_46_out1;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_i_rgb_m_unvalidated_req
            if (i_rst == 1'b0) begin
               i_rgb_m_unvalidated_req <= 1'd1;
            end
            else begin
               i_rgb_m_unvalidated_req <= SobelFilter_N_Muxb_1_2_4_4_10_out1;
            end
         end

         // resource:SobelFilter_N_Muxb_1_2_4_4
         always @(i_rgb_vld or i_rgb_m_busy_req_0 or i_rgb_m_unvalidated_req)
          begin :SobelFilter_N_Muxb_1_2_4_4_10
            if (i_rgb_m_busy_req_0) begin
               SobelFilter_N_Muxb_1_2_4_4_10_out1 = i_rgb_m_unvalidated_req;
            end
            else begin
               SobelFilter_N_Muxb_1_2_4_4_10_out1 = i_rgb_vld;
            end
         end

         // thread: drive_o_newR_vld
         assign o_newR_vld = SobelFilter_Or_1Ux1U_1U_4_2_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_2
         assign SobelFilter_Or_1Ux1U_1U_4_2_out1 = o_newR_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_4_1_out1;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newR_m_unacked_req
            if (i_rst == 1'b0) begin
               o_newR_m_unacked_req <= 1'd0;
            end
            else begin
               o_newR_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_13_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_13
         assign SobelFilter_And_1Ux1U_1U_4_13_out1 = o_newR_busy & o_newR_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_4  instance: SobelFilter_Xor_1Ux1U_1U_4_1
         assign SobelFilter_Xor_1Ux1U_1U_4_1_out1 = o_newR_m_req_m_trig_req ^ o_newR_m_req_m_prev_trig_req;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newR_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_newR_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_newR_m_req_m_prev_trig_req <= o_newR_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_4  instance: SobelFilter_Not_1U_1U_4_3
         assign SobelFilter_Not_1U_1U_4_3_out1 = !o_newR_m_req_m_trig_req;

         // thread: drive_o_newG_vld
         assign o_newG_vld = SobelFilter_Or_1Ux1U_1U_4_5_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_5
         assign SobelFilter_Or_1Ux1U_1U_4_5_out1 = o_newG_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_4_4_out1;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newG_m_unacked_req
            if (i_rst == 1'b0) begin
               o_newG_m_unacked_req <= 1'd0;
            end
            else begin
               o_newG_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_14_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_14
         assign SobelFilter_And_1Ux1U_1U_4_14_out1 = o_newG_busy & o_newG_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_4  instance: SobelFilter_Xor_1Ux1U_1U_4_4
         assign SobelFilter_Xor_1Ux1U_1U_4_4_out1 = o_newG_m_req_m_trig_req ^ o_newG_m_req_m_prev_trig_req;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newG_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_newG_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_newG_m_req_m_prev_trig_req <= o_newG_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_4  instance: SobelFilter_Not_1U_1U_4_6
         assign SobelFilter_Not_1U_1U_4_6_out1 = !o_newG_m_req_m_trig_req;

         // thread: drive_o_newB_vld
         assign o_newB_vld = SobelFilter_Or_1Ux1U_1U_4_8_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_8
         assign SobelFilter_Or_1Ux1U_1U_4_8_out1 = o_newB_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_4_7_out1;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newB_m_unacked_req
            if (i_rst == 1'b0) begin
               o_newB_m_unacked_req <= 1'd0;
            end
            else begin
               o_newB_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_15_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_15
         assign SobelFilter_And_1Ux1U_1U_4_15_out1 = o_newB_busy & o_newB_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_4  instance: SobelFilter_Xor_1Ux1U_1U_4_7
         assign SobelFilter_Xor_1Ux1U_1U_4_7_out1 = o_newB_m_req_m_trig_req ^ o_newB_m_req_m_prev_trig_req;

         // resource: regr_1
         always @(posedge i_clk)
          begin :drive_o_newB_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_newB_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_newB_m_req_m_prev_trig_req <= o_newB_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_4  instance: SobelFilter_Not_1U_1U_4_9
         assign SobelFilter_Not_1U_1U_4_9_out1 = !o_newB_m_req_m_trig_req;


endmodule

