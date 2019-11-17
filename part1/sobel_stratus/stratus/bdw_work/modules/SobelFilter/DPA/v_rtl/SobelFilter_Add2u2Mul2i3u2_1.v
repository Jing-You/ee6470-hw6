`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Generated at: 10:14:31 CST (+0800), Sunday 17 November 2019
    Generated on: ic58.cs.nthu.edu.tw
    Generated by: mc03 ()
    
    Created by: Stratus DpOpt 2017.1.02 
    Copyright (c) 2014-2015 Cadence Design Systems. All rights reserved worldwide.
    
    Cadence Design Systems proprietary and confidential
    ===================================================
    
    May contain information that incorporates Cadence Design Systems CellMath
    and other inventions claimed in Pending U.S. Patents.
    
    May contain Cadence Design Systems Trade Secrets of which use, disclosure or
    reproduction is contractually restricted or prohibited.  For more
    information, contact your legal department before any use, disclosure or
    reproduction.
*******************************************************************************/

module SobelFilter_Add2u2Mul2i3u2_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in2,
	in1;
output [3:0] out1;
wire [3:0] asc001;

wire [3:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(4'B0011 * in2);
assign asc001 = asc001_tmp_0
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  ubfwTQo= : u9/ySgnYtBlWxVDRUQkU4ug= ** DO NOT EDIT THIS LINE ******/

