#ifndef EMBOSS_FILTER_H_
#define EMBOSS_FILTER_H_
#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "filter_def.h"

class EmbossFilter: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_uint<24> >::in i_rgb;
	cynw_p2p< sc_dt::sc_uint<8> >::out o_newR;
	cynw_p2p< sc_dt::sc_uint<8> >::out o_newG;
	cynw_p2p< sc_dt::sc_uint<8> >::out o_newB;
#else
	sc_fifo_in< sc_dt::sc_uint<24> > i_rgb;
	sc_fifo_out< sc_dt::sc_uint<8> > o_newR;
	sc_fifo_out< sc_dt::sc_uint<32> > o_newG;
	sc_fifo_out< sc_dt::sc_uint<32> > o_newB;
#endif

	SC_HAS_PROCESS( EmbossFilter );
	EmbossFilter( sc_module_name n );
	~EmbossFilter();
private:
	void do_filter();
  int val[MASK_N];
};
#endif
