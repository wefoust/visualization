set(CMAKE_Fortran_COMPILER "/bin/gfortran")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "GNU")
set(CMAKE_Fortran_COMPILER_VERSION "4.8.5")
set(CMAKE_Fortran_COMPILER_WRAPPER "")
set(CMAKE_Fortran_PLATFORM_ID "")
set(CMAKE_Fortran_SIMULATE_ID "")
set(CMAKE_Fortran_SIMULATE_VERSION "")


set(CMAKE_AR "/bin/ar")
set(CMAKE_Fortran_COMPILER_AR "/bin/gcc-ar")
set(CMAKE_RANLIB "/bin/ranlib")
set(CMAKE_Fortran_COMPILER_RANLIB "/bin/gcc-ranlib")
set(CMAKE_COMPILER_IS_GNUG77 1)
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;fpp;FPP;f77;F77;f90;F90;for;For;FOR;f95;F95)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "8")
set(CMAKE_Fortran_COMPILER_ABI "")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()





set(CMAKE_Fortran_IMPLICIT_INCLUDE_DIRECTORIES "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/finclude;/glade/work/cponder/SHARE/Utils/PIO/2_4_2/PGI-19.4_OpenMPI-3.1.4_NetCDF-F-4.4.5/include;/glade/work/cponder/SHARE/Utils/NetCDF-F/4.4.5/PGI-19.4_OpenMPI-3.1.4_NetCDF-C-4.7.0/include;/glade/work/cponder/SHARE/Utils/NetCDF-C/4.7.0/PGI-19.4_OpenMPI-3.1.4_PNetCDF-1.11.1_HDF5-1.10.5/include;/glade/work/cponder/SHARE/Utils/HDF5/1.10.5/PGI-19.4_OpenMPI-3.1.4_SZip-2.1.1_ZLib-1.2.11/include;/glade/work/cponder/SHARE/Utils/PNetCDF/1.11.1/PGI-19.4_OpenMPI-3.1.4/include;/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/include;/glade/work/cponder/SHARE/Utils/HWLoc/1.11.12/PGI-19.4_CUDA-10.1.105.0_418.39/include;/glade/work/cponder/SHARE/Utils/ZLib/1.2.11/PGI-19.4/include;/glade/work/cponder/SHARE/Utils/SZip/2.1.1/PGI-19.4/include;/glade/work/cponder/SHARE/Utils/PGI/19.4/linux86-64-nollvm/2019/cuda/10.1/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/nvvm/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/Debugger/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/CUPTI/include;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/include/CL;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/samples/common/inc;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/include;/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include;/usr/local/include;/usr/include")
set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "gfortran;m;gcc_s;gcc;quadmath;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/nvvm/lib64;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/Debugger/lib64;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/extras/CUPTI/lib64;/usr/lib/gcc/x86_64-redhat-linux/4.8.5;/usr/lib64;/lib64;/glade/work/cponder/SHARE/Utils/PIO/2_4_2/PGI-19.4_OpenMPI-3.1.4_NetCDF-F-4.4.5/lib;/glade/work/cponder/SHARE/Utils/NetCDF-F/4.4.5/PGI-19.4_OpenMPI-3.1.4_NetCDF-C-4.7.0/lib;/glade/work/cponder/SHARE/Utils/NetCDF-C/4.7.0/PGI-19.4_OpenMPI-3.1.4_PNetCDF-1.11.1_HDF5-1.10.5/lib;/glade/work/cponder/SHARE/Utils/HDF5/1.10.5/PGI-19.4_OpenMPI-3.1.4_SZip-2.1.1_ZLib-1.2.11/lib;/glade/work/cponder/SHARE/Utils/PNetCDF/1.11.1/PGI-19.4_OpenMPI-3.1.4/lib;/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/lib;/glade/work/cponder/SHARE/Utils/HWLoc/1.11.12/PGI-19.4_CUDA-10.1.105.0_418.39/lib;/glade/work/cponder/SHARE/Utils/ZLib/1.2.11/PGI-19.4/lib;/glade/work/cponder/SHARE/Utils/SZip/2.1.1/PGI-19.4/lib;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/lib64/stubs;/glade/work/cponder/SHARE/Utils/CUDA/10.1.105.0_418.39/lib64;/usr/lib")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
