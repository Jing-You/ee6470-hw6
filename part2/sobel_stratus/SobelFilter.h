#ifndef SOBEL_FILTER_H_
#define SOBEL_FILTER_H_
#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "filter_def.h"

class SobelFilter: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p<sc_dt::sc_uint<8> >::in i_R;
	cynw_p2p<sc_dt::sc_uint<8> >::in i_G;
	cynw_p2p<sc_dt::sc_uint<8> >::in i_B;
	cynw_p2p<sc_dt::sc_uint<8> >::out o_newR;
	cynw_p2p< sc_dt::sc_uint<8> >::out o_newG;
	cynw_p2p< sc_dt::sc_uint<8> >::out o_newB;
#else
	sc_fifo_in<sc_dt::sc_uint<8> > i_R;
	sc_fifo_in<sc_dt::sc_uint<8> > i_G;
	sc_fifo_in<sc_dt::sc_uint<8> > i_B;
	sc_fifo_out<sc_dt::sc_uint<8>> o_newR;
	sc_fifo_out< sc_dt::sc_uint<8> > o_newG;
	sc_fifo_out< sc_dt::sc_uint<8> > o_newB;
#endif

	SC_HAS_PROCESS( SobelFilter );
	SobelFilter( sc_module_name n );
	~SobelFilter();
private:
	void do_filter_r();
	void do_filter_g();
	void do_filter_b();
};
#endif
