set(CMAKE_C_COMPILER "/bin/gcc")
set(CMAKE_C_COMPILER_ARG1 "")
set(CMAKE_C_COMPILER_ID "GNU")
set(CMAKE_C_COMPILER_VERSION "4.8.5")
set(CMAKE_C_COMPILER_VERSION_INTERNAL "")
set(CMAKE_C_COMPILER_WRAPPER "")
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT "90")
set(CMAKE_C_COMPILE_FEATURES "c_std_90;c_function_prototypes;c_std_99;c_restrict;c_variadic_macros;c_std_11;c_static_assert")
set(CMAKE_C90_COMPILE_FEATURES "c_std_90;c_function_prototypes")
set(CMAKE_C99_COMPILE_FEATURES "c_std_99;c_restrict;c_variadic_macros")
set(CMAKE_C11_COMPILE_FEATURES "c_std_11;c_static_assert")

set(CMAKE_C_PLATFORM_ID "Linux")
set(CMAKE_C_SIMULATE_ID "")
set(CMAKE_C_SIMULATE_VERSION "")



set(CMAKE_AR "/bin/ar")
set(CMAKE_C_COMPILER_AR "/bin/gcc-ar")
set(CMAKE_RANLIB "/bin/ranlib")
set(CMAKE_C_COMPILER_RANLIB "/bin/gcc-ranlib")
set(CMAKE_LINKER "/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCC 1)
set(CMAKE_C_COMPILER_LOADED 1)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_C_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_C_COMPILER_ENV_VAR "CC")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_C_COMPILER_ID_RUN 1)
set(CMAKE_C_SOURCE_FILE_EXTENSIONS c;m)
set(CMAKE_C_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_C_LINKER_PREFERENCE 10)

# Save compiler ABI information.
set(CMAKE_C_SIZEOF_DATA_PTR "8")
set(CMAKE_C_COMPILER_ABI "ELF")
set(CMAKE_C_LIBRARY_ARCHITECTURE "")

if(CMAKE_C_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_C_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_C_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_C_COMPILER_ABI}")
endif()

if(CMAKE_C_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_C_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_C_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_C_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES "/glade/work/cponder/SHARE/Utils/PIO/2_4_2/PGI-19.4_OpenMPI-3.1.4_NetCDF-F-4.4.5/include;/glade/work/cponder/SHARE/Utils/NetCDF-F/4.4.5/PGI-19.4_OpenMPI-3.1.4_NetCDF-C-4.7.0/include;/glade/work/cponder/SHARE/Utils/NetCDF-C/4.7.0/PGI-19.4_OpenMPI-3.1.4_PNetCDF-1.11.1_HDF5-1.10.5/include;/glade/work/cponder/SHARE/Utils/HDF5/1.10.5/PGI-19.4_OpenMPI-3.1.4_SZip-2.1.1_ZLib-1.2.11/include;/glade/work/cponder/SHARE/Utils/PNetCDF/1.11.1/PGI-19.4_OpenMPI-3.1.4/include;/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/include;/glade/work/cponder/SHARE/Utils/HWLoc/1.11.12/PGI-19.4_CUDA-10.1.105.0_418.39/include;/glade/work/cponder/SHARE/Utils/ZLib/1.2.11/PGI-19.4/include;/glade/work/cponder/SHARE/Utils/SZip/2.1.1/PGI-19.4/include;/glade/work/cponder/SHARE/Utils/PGI/19.4/linux86-64-nollvm/2019/cuda/10.1/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/nvvm/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/Debugger/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/CUPTI/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/include/CL;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/samples/common/inc;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/include;/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include;/usr/local/include;/usr/include")
set(CMAKE_C_IMPLICIT_LINK_LIBRARIES "gcc;gcc_s;c;gcc;gcc_s")
set(CMAKE_C_IMPLICIT_LINK_DIRECTORIES "/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/nvvm/lib64;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/Debugger/lib64;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/CUPTI/lib64;/usr/lib/gcc/x86_64-redhat-linux/4.8.5;/usr/lib64;/lib64;/glade/work/cponder/SHARE/Utils/PIO/2_4_2/PGI-19.4_OpenMPI-3.1.4_NetCDF-F-4.4.5/lib;/glade/work/cponder/SHARE/Utils/NetCDF-F/4.4.5/PGI-19.4_OpenMPI-3.1.4_NetCDF-C-4.7.0/lib;/glade/work/cponder/SHARE/Utils/NetCDF-C/4.7.0/PGI-19.4_OpenMPI-3.1.4_PNetCDF-1.11.1_HDF5-1.10.5/lib;/glade/work/cponder/SHARE/Utils/HDF5/1.10.5/PGI-19.4_OpenMPI-3.1.4_SZip-2.1.1_ZLib-1.2.11/lib;/glade/work/cponder/SHARE/Utils/PNetCDF/1.11.1/PGI-19.4_OpenMPI-3.1.4/lib;/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/lib;/glade/work/cponder/SHARE/Utils/HWLoc/1.11.12/PGI-19.4_CUDA-10.1.105.0_418.39/lib;/glade/work/cponder/SHARE/Utils/ZLib/1.2.11/PGI-19.4/lib;/glade/work/cponder/SHARE/Utils/SZip/2.1.1/PGI-19.4/lib;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/lib64/stubs;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/lib64;/usr/lib")
set(CMAKE_C_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
