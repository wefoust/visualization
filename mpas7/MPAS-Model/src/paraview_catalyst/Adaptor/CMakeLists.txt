cmake_minimum_required(VERSION 3.14.5)
project(MPASAdaptor)

#set(CMAKE_CXX_STANDARD 98)
#set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CXX_EXTENSIONS OFF)
#add_compile_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)

#set(D_GLIBCXX_USE_CXX11_ABI,"0")

find_package(ParaView REQUIRED COMPONENTS vtkPVCatalyst vtkPVPythonCatalyst)
include(${PARAVIEW_USE_FILE})

option(BUILD_SHARED_LIBS "Build ParaView using shared libraries" ON)

enable_language(Fortran)
include(FortranCInterface)

FortranCInterface_HEADER(MPASAdaptorAPIMangling.h SYMBOLS
  coprocessor_create_grid 
  coprocessor_register_tracer_data coprocessor_add_tracer_data
  coprocessor_register_data coprocessor_add_data
  mpas_initialize mpas_registerdata mpas_coprocess mpas_finalize mpas_check_coprocess )

include_directories(${MPASAdaptor_BINARY_DIR})

set(MPASAdaptor_SRCS
  GridUtils.cxx
  MPASAdaptor.cxx
  MPAS_XY_NLayer.cxx
  MPAS_XYZ_1Layer.cxx
  MPAS_XYZ_NLayer.cxx
  MPAS_LonLat_1Layer.cxx
  MPAS_LonLat_NLayer.cxx
)

add_library(MPASAdaptor ${MPASAdaptor_SRCS})
target_link_libraries(
  MPASAdaptor vtkPVCatalyst vtkPVPythonCatalyst
)
