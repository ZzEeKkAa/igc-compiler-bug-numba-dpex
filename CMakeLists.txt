cmake_minimum_required(VERSION 3.21)

project(
  wsl-corruption-repro
  VERSION 1.0.0
  DESCRIPTION "C++ reproducible from https://github.com/IntelPython/numba-dpex/issues/809"
  LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)



find_package(IntelSYCL REQUIRED)
# find_package(OpenCL REQUIRED)
# find_library(L0_LOADER_LIB NAMES "libze_loader.dll")
# find_library(L0_LOADER_LIB NAMES "pi_level_zero.dll")
# find_library(CL_LOADER_LIB NAMES "OpenCL.dll")

# include(CheckIncludeFileCXX)
# check_include_file_cxx(level_zero/ze_api.h LO_CORE_INC_FOUND)
# check_include_file_cxx(CL/cl.h OpenCL_INCLUDE_DIRS)

add_executable(run_example
  ${CMAKE_SOURCE_DIR}/launch.cpp
  # ${CMAKE_SOURCE_DIR}/ze_interop.cpp  
  # ${CMAKE_SOURCE_DIR}/cl_interop.cpp  
)
target_include_directories(run_example PRIVATE ${CMAKE_SOURCE_DIR})
# target_link_libraries(run_example ${L0_LOADER_LIB} ${CL_LOADER_LIB})
add_sycl_to_target(TARGET run_example SOURCES 
  ${CMAKE_SOURCE_DIR}/launch.cpp
  # ${CMAKE_SOURCE_DIR}/ze_interop.cpp  
  # ${CMAKE_SOURCE_DIR}/cl_interop.cpp  
)

target_link_libraries(run_example OpenCL.lib) 
install(TARGETS run_example DESTINATION ${CMAKE_SOURCE_DIR})

