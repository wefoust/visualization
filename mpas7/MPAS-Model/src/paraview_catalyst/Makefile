.SUFFIXES: .F .o

#ADD_LIBRARY(MPASAdaptor SHARED ${./Adaptor/MPASAdaptor.cxx})

#SET(libSRCS ./Adaptor/MPASAdaptor.cxx)
#ADD_LIBRARY(MPASAdaptor SHARED ${libSRCS})

OBJS = mpas_paraview_catalyst.o

all: paraview

paraview: $(OBJS)

	#( mkdir Adaptor-build; cd Adaptor-build; cmake -DPARAVIEW_USE_MPI=ON -DCMAKE_CXX_FLAGS=-O2 -DCMAKE_Fortran_FLAGS=-O2 -DCMAKE_C_FLAGS=-O2 -DPARAVIEW_ENABLE_CATALYST=ON -DPARAVIEW_ENABLE_PYTHON=ON -DParaView_DIR="$(PARAVIEW)" ../Adaptor; make -v)	
	#( mkdir Adaptor-build; cd Adaptor-build; cmake -DPARAVIEW_USE_MPI=ON -DMPI_C_LIBRARIES=/glade/u/apps/dav/opt/openmpi/3.1.2/gnu/7.3.0/lib/libmpi.so -DMPI_C_INCLUDE_PATH=/glade/u/apps/dav/opt/openmpi/3.1.2/gnu/7.3.0/include -DCMAKE_CXX_FLAGS=-O2 -DCMAKE_Fortran_FLAGS=-O2 -DCMAKE_C_FLAGS=-O2 -DCMAKE_CXX_COMPILER=/glade/u/apps/dav/opt/gnu/7.3.0/bin/g++ -DCMAKE_C_COMPILER=/glade/u/apps/dav/opt/gnu/7.3.0/bin/gcc -DCMAKE_Fortran_COMPILER=/glade/u/apps/dav/opt/gnu/7.3.0/bin/gfortran -DPARAVIEW_ENABLE_CATALYST=ON -DPARAVIEW_ENABLE_PYTHON=ON -DParaView_DIR="$(PARAVIEW)" ../Adaptor; make -v)#
	( mkdir Adaptor-build; cd Adaptor-build; cmake -DPARAVIEW_USE_MPI=ON -DMPI_C_LIBRARIES=/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/lib/libmpi.so -DMPI_C_INCLUDE_PATH=/glade/work/cponder/SHARE/Utils/OpenMPI/3.1.4/PGI-19.4_CUDA-10.1.105.0_418.39_HWLoc-1.11.12_ZLib-1.2.11/include/ -DCMAKE_CXX_FLAGS=-O2 -DCMAKE_Fortran_FLAGS=-O2 -DCMAKE_C_FLAGS=-O2 -DCMAKE_CXX_COMPILER=/bin/g++ -DCMAKE_C_COMPILER=/bin/gcc -DCMAKE_Fortran_COMPILER=/bin/gfortran -DPARAVIEW_ENABLE_CATALYST=ON -DPARAVIEW_ENABLE_PYTHON=ON -DParaView_DIR="$(PARAVIEW)" ../Adaptor; make)#
	ar -ru libparaview.a $(OBJS)

mpas_paraview_catalyst.o: 


clean:
	$(RM) *.o *.mod *.f90 libparaview.a
	( cd Adaptor-build; make clean)

.F.o:
	$(RM) $@ $*.mod
ifeq "$(GEN_F90)" "true"
	$(CPP) $(CPPFLAGS) $(CPPINCLUDES) -I../inc $< > $*.f90 -L./Adaptor-build -lMPASAdaptor #-lstdc++
	$(FC) $(FFLAGS) -c $*.f90 $(FCINCLUDES) -I../framework -I../external/esmf_time_f90 #-lstdc++
else
	$(FC) $(CPPFLAGS) $(FFLAGS) -c $*.F $(CPPINCLUDES) $(FCINCLUDES) -I../framework -I../external/esmf_time_f90 -L./Adaptor-build -lMPASAdaptor #-lstdc++
endif

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $(CPPINCLUDES) -c $< #-lstdc++
