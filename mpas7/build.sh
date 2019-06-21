#!/bin/bash -l
module use /glade/work/cponder/SHARE/Modules/Latest
module use /glade/work/cponder/SHARE/Modules/Legacy

module use --append /glade/work/cponder/SHARE/Modules/Bundles

for dir in /glade/work/cponder/SHARE/Modules/PrgEnv/*/*
do
    module use --append $dir
done

module purge
module load PrgEnv/PGI+OpenMPI/2019-04-30 
module load pio
#module load paraview
module load cmake/3.9.4

module list
which mpif90
mpif90 -V
mpif90 -show

ulimit -s unlimited
module list
export NETCDF=$NETCDF_C
export NETCDFF=$NETCDF_F
export PARAVIEW=/glade/work/omeara/ParaView-v5.6.1/build/
#export NETCDF=/glade/work/cponder/SHARE/Utils/NetCDF-C/4.6.3/PGI-19.3_OpenMPI-3.1.3_PNetCDF-1.11.0_HDF5-1.10.5/
#export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/glade/work/cponder/SHARE/Utils/NetCDF-C/4.6.3/PGI-19.3_OpenMPI-3.1.3_PNetCDF-1.11.0_HDF5-1.10.5/lib/

echo $LD_LIBRARY_PATH

cd /gpfs/fs1/work/omeara/visualization/mpas7/MPAS-Model

make clean CORE=atmosphere
make pgi CORE=atmosphere OPENACC=true PRECISION=single USE_PIO2=true DEBUG=false
