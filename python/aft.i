%module aft
%feature("flatnested");

%{
	#include "mtp/ptp/Session.h"
	#include "mtp/ptp/Device.h"

	using namespace mtp;

	using ObjectEditSessionPtr = mtp::Session::ObjectEditSessionPtr;
%}

%ignore DECLARE_PTR;
%define DECLARE_PTR(type)
%enddef

%include <std_shared_ptr.i>
%include <stdint.i>

#include "mtp/types.h"

%ignore mtp::Device::Device;
%shared_ptr(DevicePtr)
%include "mtp/ptp/Device.h"

%ignore mtp::Session::Session;
%shared_ptr(SessionPtr)
%include "mtp/ptp/Session.h"
%shared_ptr(ObjectEditSessionPtr)
