#!/bin/bash
# LSF batch script to run an MPI application
#
#PBS -A NTDD0002
#PBS -l walltime=00:15:00
#PBS -l select=2:ncpus=36:mpiprocs=36
#PBS -N MPAS
#PBS -o baseCode1.out
#PBS -e baseCode1.err
#PBS -q regular

module purge
ulimit -s unlimited
module load intel/17.0.1
module load mpt/2.19
module load netcdf-mpi/4.6.1
module load pnetcdf/1.11.0
module load pio/2.4.1
module list

export PIO=/glade/work/jedwards/tools/pio/2.4.1/intel/17.0.1/mpt/2.19/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/glade/u/apps/ch/opt/netcdf-mpi/4.6.1/mpt/2.19/intel/17.0.1/lib/

cd /glade/work/omeara/Testing/benchmark/ 

mpiexec_mpt dplace -s 1  ./atmosphere_model
