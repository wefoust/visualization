#!/bin/bash -l

#SBATCH -J MPAS_gpu
#SBATCH -n 32
#SBATCH -N 1
#SBATCH --tasks-per-node=32
#SBATCH -t 00:20:00
#SBATCH -p dav
#SBATCH -A NTDD0002
##SBATCH --gres=gpu:v100:8
#SBATCH -o gpu.out
#SBATCH --mem=0
##SBATCH --reservation casper27_muram

#Total number of MPI ranks provided by n=N*tasks_per_node
unset SLURM_MEM_PER_NODE
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

module list
which mpif90
mpif90 -V

ulimit -s unlimited
module list
export NETCDF=$NETCDF_C
export NETCDFF=$NETCDF_F

echo $LD_LIBRARY_PATH

cd /gpfs/fs1/work/omeara/CasperMPAS/MPAS-Model/
echo $LDFLAGS
export PGI_ACC_TIME=1

#the n argument here is number of tasks per node,
export OMPI_MCA_btl_openib_if_include=mlx5_0
mpirun -n 32 ./atmosphere_model
#srun --mem=0 --mpi=pmix ./atmosphere_model
#srun --mem=0 --mpi=pmix nvprof -o output.%h.%p.%q{OMPI_COMM_WORLD_RANK} ./atmosphere_model
