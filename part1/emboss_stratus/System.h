#ifndef SYSTEM_H_
#define SYSTEM_H_
#include <systemc>
using namespace sc_core;

#include "Testbench.h"
#ifndef NATIVE_SYSTEMC
#include "embossFilter_wrap.h"
#else
#include "embossFilter.h"
#endif

class System: public sc_module
{
public:
	SC_HAS_PROCESS( System );
	System( sc_module_name n, std::string input_bmp, std::string output_bmp );
	~System();
private:
  Testbench tb;
#ifndef NATIVE_SYSTEMC
	EmbossFilter_wrapper emboss_filter;
#else
	EmbossFilter emboss_filter;
#endif
	sc_clock clk;
	sc_signal<bool> rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_uint<24> > rgb;
	cynw_p2p< sc_dt::sc_uint<8> > newR;
	cynw_p2p< sc_dt::sc_uint<8> > newG;
	cynw_p2p< sc_dt::sc_uint<8> > newB;
#else
	sc_fifo< sc_dt::sc_uint<24> > rgb;
	sc_fifo< sc_dt::sc_uint<8> > newR;
	sc_fifo< sc_dt::sc_uint<8> > newG;
	sc_fifo< sc_dt::sc_uint<8> > newB;
#endif

	std::string _output_bmp;
};
#endif
