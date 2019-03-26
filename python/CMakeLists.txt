include(UseSWIG)
find_package(PythonLibs)

include_directories(${PYTHON_INCLUDE_PATH})

set_source_files_properties(aft.i PROPERTIES CPLUSPLUS ON)
set_source_files_properties(aft.i PROPERTIES SWIG_FLAGS "-I${PROJECT_SOURCE_DIR}")

swig_add_library(aft LANGUAGE python OUTFILE_DIR ${CMAKE_CURRENT_BINARY_DIR} SOURCES aft.i)
swig_link_libraries(aft ${PYTHON_LIBRARIES})
