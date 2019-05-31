#!/bin/bash -l

module purge
export PATH=/glade/work/ssuresh/1810pgi/linux86-64/18.10/bin/:$PATH
export LD_LIBRARY_PATH=/glade/work/ssuresh/1810pgi/linux86-64/18.10/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/glade/work/ssuresh/1810pgi/openmpi/lib/:$LD_LIBRARY_PATH
export PATH=/glade/work/ssuresh/1810pgi/openmpi/bin/:$PATH

#export PATH=/glade/u/apps/dav/opt/pgi/18.4/linux86-64/18.4//bin/:$PATH
#export LD_LIBRARY_PATH=/glade/u/apps/dav/opt/pgi/18.4/linux86-64/18.4//lib/:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/glade/u/apps/dav/opt/pgi/18.4/linux86-64/18.4/mpi/openmpi-2.1.2/lib/:$LD_LIBRARY_PATH
#export PATH=/glade/u/apps/dav/opt/pgi/18.4/linux86-64/18.4//mpi/openmpi-2.1.2/bin/:$PATH

which mpif90
mpif90 -v

export PNETCDF=/glade/work/ssuresh/1810pgi/pgi1810_lib/libs-pgi1810/
export NETCDF=/glade/work/ssuresh/1810pgi/pgi1810_lib/libs-pgi1810/
export PIO=/glade/work/ssuresh/1810pgi/pgi1810_lib/libs-pgi1810/
export MPAS_EXTERNAL_LIBS="-L/glade/work/ssuresh/1810pgi/pgi1810_lib/libs-pgi1810/lib/ -lhdf5_hl -lhdf5 -ldl -lz"
export MPAS_EXTERNAL_INCLUDES="-I/glade/work/ssuresh/1810pgi/pgi1810_lib/libs-pgi1810/include"
ulimit -s unlimited
module list


echo $LD_LIBRARY_PATH
cd /glade/scratch/ssuresh/viz/MPAS

make clean CORE=atmosphere
make pgi CORE=atmosphere OPENACC=true PRECISION=single USE_PIO2=true
