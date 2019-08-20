from dxpyfeed.wrapper.pxd_include.DXTypes cimport *
from dxpyfeed.wrapper.pxd_include.EventData cimport *


cdef class FuncWrapper:
	cdef dxf_event_listener_t func
	@staticmethod
	cdef FuncWrapper make_from_ptr(dxf_event_listener_t f)

cdef void trade_default_listener(int event_type, dxf_const_string_t symbol_name,
			            		 const dxf_event_data_t* data, int data_count, void* user_data)

cdef void quote_default_listener(int event_type, dxf_const_string_t symbol_name,
			                     const dxf_event_data_t* data, int data_count, void* user_data)

cdef void summary_default_listener(int event_type, dxf_const_string_t symbol_name,
			                     const dxf_event_data_t* data, int data_count, void* user_data)

cdef void profile_default_listener(int event_type, dxf_const_string_t symbol_name,
			                     const dxf_event_data_t* data, int data_count, void* user_data)

cdef void time_and_sale_default_listener(int event_type, dxf_const_string_t symbol_name,
			                     const dxf_event_data_t* data, int data_count, void* user_data)

cdef void candle_default_listener(int event_type, dxf_const_string_t symbol_name,
			                     const dxf_event_data_t* data, int data_count, void* user_data)