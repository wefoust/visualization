#!/bin/bash

module purge
module load intel/17.0.1
module load mpt/2.19
module load netcdf-mpi/4.6.1
module load pnetcdf/1.11.0
module load pio/2.4.1

module list
export PIO=/glade/work/jedwards/tools/pio/2.4.1/intel/17.0.1/mpt/2.19/

cd /glade/work/omeara/Testing/MPAS-Model
make clean CORE=atmosphere
make ifort CORE=atmosphere USE_PIO2=true PRECISION=single
