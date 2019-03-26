include(UseSWIG)
find_package(PythonLibs)

if(NOT BUILD_SHARED_LIB)
	message(FATAL_ERROR "python bindings require BUILD_SHARED_LIB, rework STATIC lib support as per cmake docs")
endif()

include_directories(${PYTHON_INCLUDE_PATH})

get_property(DIRS TARGET mtp-ng PROPERTY INCLUDE_DIRECTORIES)
list(TRANSFORM DIRS PREPEND -I)

set_source_files_properties(aft.i PROPERTIES CPLUSPLUS ON)
set_source_files_properties(aft.i PROPERTIES SWIG_FLAGS "${DIRS}")

swig_add_library(aft LANGUAGE python OUTFILE_DIR ${CMAKE_CURRENT_BINARY_DIR} SOURCES aft.i)
swig_link_libraries(aft ${PYTHON_LIBRARIES} ${MTP_LIBRARIES})
