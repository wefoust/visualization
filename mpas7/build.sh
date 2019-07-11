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


which mpif90
mpif90 -V
mpif90 -show

ulimit -s unlimited
module list
export NETCDF=$NETCDF_C
export NETCDFF=$NETCDF_F
export PARAVIEW=/glade/work/cponder/Applications/ParaView_pgi/build
export PATH=/glade/work/omeara/Downloads/cmake-3.14.5/bin:$PATH

echo $LD_LIBRARY_PATH

cd /gpfs/fs1/work/omeara/visualization/mpas7/MPAS-Model
#rm -r ./src/paraview_catalyst/Adaptor-build

make clean CORE=atmosphere
make pgi CORE=atmosphere OPENACC=true PRECISION=single USE_PIO2=true DEBUG=false
