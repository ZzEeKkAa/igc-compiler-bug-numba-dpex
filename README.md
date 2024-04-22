# Reproducer for broken IGC compilation for the output of 

## Building spirv binary launcher

1. Activate oneapi via `setenv.bat` or any other way
2. `cmake -B build -S .`
3. `cmake --build build --target run_example`
4. `.\build\run_example.exe`

### Output
```
Execution device: Intel(R) Iris(R) Xe Graphics
Execution device driver_version: 31.0.101.5382
Read SPV and names
Size of SPV: 8984
Name of the kernel: kernel
Starting CL build...
Created program with IL!
Could not build program with IL:-11
```

### Expected output
```
Execution device: Intel(R) Iris(R) Xe Graphics
Execution device driver_version: 31.0.101.5382
Read SPV and names
Size of SPV: 8844
Name of the kernel: kernel
Starting CL build...
Created program with IL!
Created cl program!
Created kernel bundle!
```

## Building spirv binaries

Since ll is version 14, you need llvm 14'th version llvm-as

1. `llvm-as.exe -o kernel.ir kernel.ll`
2. `<path to 2024.0 compiler>\llvm-spirv.exe -o kernel_2024_0.bc kernel.ir`
2. `<path to 2024.1 compiler>\llvm-spirv.exe -o kernel_2024_1.bc kernel.ir`
