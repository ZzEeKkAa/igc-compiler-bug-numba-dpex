import dpctl
import dpctl.program as prg

queue = dpctl.SyclQueue()

# from subprocess import check_output
# import dpcpp_llvm_spirv as dls

# check_output([
#     dls.get_llvm_spirv_path(),
#     "-o", "test.bc",
#     "test.ir",
# ])

with open("kernel_2024_1.bc", "rb") as fin:
    spirv = fin.read()

# --- output ---
## with $env:DPCTL_VERBOSITY="warning"
# [WARN] clBuildProgram failed: CL_BUILD_PROGRAM_FAILURE (code=-11) in _CreateKernelBundle_common_ocl_impl at C:/Miniconda/conda-bld/dpctl_1712607702555/work/libsyclinterface/source/dpctl_sycl_kernel_bundle_interface.cpp:193
# Traceback (most recent call last):
#   File "C:\Users\yevhenii\Projects\numba-dpex\test.py", line 10, in <module>
#     prg.create_program_from_spirv(queue, spirv, "-cl-opt-disable -g -w")
#   File "dpctl\\program\\_program.pyx", line 274, in dpctl.program._program.create_program_from_spirv
#   File "dpctl\\program\\_program.pyx", line 311, in dpctl.program._program.create_program_from_spirv
# dpctl.program._program.SyclProgramCompilationError

# ---- from doc ----
# https://registry.khronos.org/OpenCL/specs/3.0-unified/html/OpenCL_API.html#compiler-options
# CL_BUILD_PROGRAM_FAILURE if there is a failure to build the program executable. This error will be returned if clBuildProgram does not return until the build has completed.
prg.create_program_from_spirv(queue, spirv, "-cl-opt-disable -g -w -v")
