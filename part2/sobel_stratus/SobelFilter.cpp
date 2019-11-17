#include <cmath>
#ifndef NATIVE_SYSTEMC
#include "stratus_hls.h"
#endif

#include "SobelFilter.h"
using namespace std;
SobelFilter::SobelFilter( sc_module_name n ): sc_module( n )
{
#ifndef NATIVE_SYSTEMC
	HLS_FLATTEN_ARRAY(val);
#endif
	SC_THREAD( do_filter );
	sensitive << i_clk.pos();
	dont_initialize();
	reset_signal_is(i_rst, false);
        
#ifndef NATIVE_SYSTEMC
	i_R.clk_rst(i_clk, i_rst);
	i_G.clk_rst(i_clk, i_rst);
	i_B.clk_rst(i_clk, i_rst);
	o_newR.clk_rst(i_clk, i_rst);
	o_newG.clk_rst(i_clk, i_rst);
  	o_newB.clk_rst(i_clk, i_rst);
#endif
}

SobelFilter::~SobelFilter() {}

// sobel mask
const int mask[MASK_N][MASK_X][MASK_Y] = {{{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}},

                                    {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}}};


const sc_int<8> embossFilterMask[MASK_X][MASK_Y] =
    {
        -1, -1, 0,
        -1, 0, 1,
        0, 1, 1
    };


void SobelFilter::do_filter() {
	int newR, newG, newB;
	int r, g, b;
	int bias = 128;
	{
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_R.reset();
		i_G.reset();
		i_B.reset();
		o_newR.reset();
		o_newG.reset();
		o_newB.reset();
#endif
		wait();
	}
	while (true) {
		{
			HLS_CONSTRAIN_LATENCY(0, 1, "lat00");
			newR = 0;
			newG = 0;
			newB = 0;
		}
		for (unsigned int v = 0; v<MASK_Y; ++v) {
			for (unsigned int u = 0; u<MASK_X; ++u) {
				sc_dt::sc_uint<24> rgb;
#ifndef NATIVE_SYSTEMC
				{
					HLS_DEFINE_PROTOCOL("input");
					// rgb = i_rgb.get();
					r = i_R.get();
					g = i_G.get();
					b = i_B.get();
					wait();
				}
#else
				r = i_R.read();
				g = i_G.read();
				b = i_B.read();
#endif
				{
					HLS_CONSTRAIN_LATENCY(0, 1, "lat01");
					newR += r * embossFilterMask[u][v];
					newG += g * embossFilterMask[u][v];
					newB += b * embossFilterMask[u][v];
				}
			}
		}
		{
			HLS_CONSTRAIN_LATENCY(0, 1, "lat01");
			newR = int(min(max(int(newR + bias), 0), 255));
			newG = int(min(max(int(newG + bias), 0), 255));
			newB = int(min(max(int(newB + bias), 0), 255));
		}
#ifndef NATIVE_SYSTEMC
		{
			HLS_DEFINE_PROTOCOL("output");
			o_newR.put(newR);
			o_newG.put(newG);
			o_newB.put(newB);
			wait();
		}
#else
			o_newR.write(newR);
			o_newG.write(newG);
			o_newB.write(newB);
#endif
	}
}