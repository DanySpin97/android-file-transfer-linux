%module aft
%feature("flatnested");

%{
	#include "mtp/ptp/Session.h"
	#include "mtp/ptp/Device.h"

	using namespace mtp;

	using ObjectEditSessionPtr = mtp::Session::ObjectEditSessionPtr;
%}

%include <std_shared_ptr.i>
%include <stdint.i>

%include "mtp/types.h"
%include "mtp/ptp/Device.h"
%include "mtp/ptp/Session.h"

%ignore mtp::Device::Device;
%ignore mtp::Session::Session;
