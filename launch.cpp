#include <CL/sycl.hpp>
#if __has_include(<CL/sycl/backend/opencl.hpp>)
#   include <CL/sycl/backend/opencl.hpp>
#else
#   include <sycl/backend/opencl.hpp>
#endif
#include <iostream>
#include <filesystem>
#include <fstream>
#include <cstdint>
#include <stdlib.h>
#include <vector>

int main(void) {
  // Input
  std::ifstream spirvFile("./kernel_2024_1.bc", std::ios::binary);
  std::string kernel_name("kernel");
  std::string clCompileOptions("-cl-opt-disable -g");
  _putenv("ONEAPI_DEVICE_SElECTOR=opencl:gpu");
  // End input

  if(!spirvFile) {
    std::cout << "Kernel binary file not found!" << std::endl;
    return 1;
  }
  std::vector<char> spirvBinary((std::istreambuf_iterator<char>(spirvFile)),
                 std::istreambuf_iterator<char>());
    
  sycl::queue q;
  std::cout << "Execution device: " << q.get_device().get_info<sycl::info::device::name>() << std::endl;
  std::cout << "Execution device driver_version: " << q.get_device().get_info<sycl::info::device::driver_version>() << std::endl;
  std::cout << "Read SPV and names" << std::endl;
  std::cout << "Size of SPV: " + std::to_string(spirvBinary.size()) << std::endl;
  std::cout << "Name of the kernel: " << kernel_name << std::endl;

  std::unique_ptr<sycl::kernel> krn;

  auto syclContext = q.get_context();
  auto clContext = sycl::get_native<sycl::backend::opencl>(syclContext);
  auto clDevice = sycl::get_native<sycl::backend::opencl>(q.get_device());

  std::cout << "Starting CL build..." << std::endl;

  cl_int create_status = CL_SUCCESS;
  cl_program clProgram =
      clCreateProgramWithIL(clContext, spirvBinary.data(), spirvBinary.size(), &create_status);

  if (create_status != CL_SUCCESS) {
      std::cout << "Could not create program with IL:" << std::to_string(create_status) << std::endl;
      return 1;
  }
  std::cout << "Created program with IL!" << std::endl;

  cl_int build_status =
      clBuildProgram(clProgram, 1, &clDevice, clCompileOptions.c_str(), nullptr, nullptr);
  if (build_status != CL_SUCCESS) {
      std::cout << "Could not build program with IL:" << std::to_string(build_status) << std::endl;
      return 1;
  }
  std::cout << "Created cl program!" << std::endl;

  auto kb =
      sycl::make_kernel_bundle<sycl::backend::opencl, sycl::bundle_state::executable>(clProgram, syclContext);
  std::cout << "Created kernel bundle!" << std::endl;

  return 0;
}
