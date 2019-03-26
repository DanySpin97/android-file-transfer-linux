%module aft
%feature("flatnested");

%{
	#include "mtp/ptp/Session.h"
	#include "mtp/ptp/Device.h"
	#include <usb/Context.h>

	using SessionPtr = mtp::SessionPtr;
	using DevicePtr = mtp::DevicePtr;
%}


%include <std_shared_ptr.i>
%include <std_vector.i>
%include <stdint.i>

%ignore mtp::Device::Device;
%ignore mtp::Session::Session;

%include "mtp/types.h"
%include "mtp/ByteArray.h"
%include "mtp/ptp/DeviceProperty.h"
%include "mtp/ptp/ObjectId.h"
%include "mtp/ptp/ObjectFormat.h"
%include "mtp/ptp/ObjectProperty.h"
%include "mtp/ptp/OperationCode.h"
%include "mtp/ptp/IObjectStream.h"

%ignore mtp::msg::DeviceInfo::Read;
%ignore mtp::msg::ObjectHandles::Read;
%ignore mtp::msg::StorageIDs::Read;
%ignore mtp::msg::StorageInfo::Read;
%ignore mtp::msg::ObjectInfo::Read;
%ignore mtp::msg::ObjectInfo::SetSize;
%ignore mtp::msg::ObjectInfo::Write;
%ignore mtp::msg::ObjectPropertiesSupported::Read;

%include "mtp/ptp/Messages.h"
%include "usb/Context.h"
%include "mtp/ptp/Device.h"

typedef std::shared_ptr<mtp::Device> DevicePtr;
typedef std::shared_ptr<mtp::Session> SessionPtr;

%include "mtp/ptp/Session.h"
