! Copyright (c) 2013,  Los Alamos National Security, LLC (LANS) (LA-CC-13-047)
! and the University Corporation for Atmospheric Research (UCAR).
!
! Unless noted otherwise source code is licensed under the BSD license.
! Additional copyright and license information can be found in the LICENSE file
! distributed with this code, or at http://mpas-dev.github.com/license.html
!
module mpas_paraview_catalyst

   use mpas_dmpar
   use mpas_sort
   use mpas_io_streams
   use mpas_framework
   use mpas_pool_routines
   !use mpas_grid_types
   !use mpas_dmpar_types
   !use mpas_configure
   !use mpas_io_output

   contains

   subroutine mpas_insitu_initialize!{{{

      call mpas_initialize

   end subroutine mpas_insitu_initialize!}}}

   subroutine mpas_insitu_create_geometry(domain)!{{{
   
      implicit none
   
      type (mpas_pool_type), pointer :: state
      type (mpas_pool_type), pointer :: mesh
      !type(mpas_pool_type),intent(in):: diag !!!!!
      type (mpas_pool_type), pointer :: diag!!!!!
      type (domain_type), intent(inout) :: domain
      type (block_type), pointer :: block
      type (mpas_exchange_list), pointer :: exchListPtr
      real (kind=RKIND), dimension(:,:,:), pointer :: tracers

      integer, pointer :: nCells, nEdges, nVertices, maxEdges, vertexDegree, nVertLevels
      integer :: nGhostCell, nGhostVertex
      integer :: nHaloLayers, iHalo, iCell, indx
      integer :: indexT, indexS, numTracers
      integer, dimension(:), allocatable :: cellGhost, cellHalo
      integer, dimension(:), allocatable :: vertexGhost, vertexHalo
      
      real(kind=RKIND), dimension(:), pointer :: xCell, yCell, zCell, &
                       xVertex, yVertex, zVertex
      real(kind=RKIND),dimension(:),pointer::latCell,lonCell
      real(kind=RKIND),dimension(:),pointer::latVertex, lonVertex
      integer, dimension(:), pointer :: nEdgesOnCell, vertexMask, cellMask
      integer, dimension(:,:), pointer :: cellsOnVertex, verticesOnCell

      !type (mpas_pool_type), pointer :: diagnosticsPool !!!!!
      !real(kind=RKIND),dimension(:),pointer:: skintemp
      real (kind=RKIND), dimension(:,:), pointer :: pressure, theta
      block => domain % blocklist

      call mpas_pool_get_subpool(domain % blocklist % structs, 'state', state)
      call mpas_pool_get_subpool(domain % blocklist % structs, 'diag', diag) 

      call mpas_pool_get_dimension(state, 'nCells', nCells)
      call mpas_pool_get_dimension(state, 'nVertices', nVertices)
      call mpas_pool_get_dimension(state, 'nVertLevels', nVertLevels)
      call mpas_pool_get_dimension(state, 'nEdges', nEdges)
      call mpas_pool_get_dimension(state, 'maxEdges', maxEdges)
      call mpas_pool_get_dimension(state, 'vertexDegree', vertexDegree)


      !nCells = block % mesh % nCells
      !nVertices = block % mesh % nVertices
      !nVertLevels = block % mesh % nVertLevels
      !nEdges = block % mesh % nEdges
      !maxEdges = block % mesh % maxEdges
      !vertexDegree = block % mesh % vertexDegree

      ! Collect the number of halo cells in all levels
      nHaloLayers = 2!config_num_halos
      nGhostCell = 0
      do iHalo = 1, nHaloLayers
        exchListPtr => block %parinfo % cellsToRecv % halos(iHalo) % exchList
        do while(associated(exchListPtr))
          nGhostCell = nGhostCell + exchListPtr % nList
          exchListPtr => exchListPtr % next
        end do
      end do

      nGhostVertex = 0
      do iHalo = 1, nHaloLayers
        exchListPtr => block %parinfo % verticesToRecv % halos(iHalo) % exchList
        do while(associated(exchListPtr))
          nGhostVertex = nGhostVertex + exchListPtr % nList
          exchListPtr => exchListPtr % next
        end do
      end do

      ! Allocate arrays to hold halo cell index and halo number
      allocate(cellGhost(nGhostCell))
      allocate(cellHalo(nGhostCell))
      allocate(vertexGhost(nGhostVertex))
      allocate(vertexHalo(nGhostVertex))

      ! Fill in halo cells indices and halo number
      indx = 1
      do iHalo = 1, nHaloLayers
        exchListPtr => block %parinfo % cellsToRecv % halos(iHalo) % exchList
        do while(associated(exchListPtr))
          do iCell = 1, exchListPtr % nList
            cellGhost(indx) = exchListPtr % destList(iCell)
            cellHalo(indx) = iHalo
            indx = indx + 1
          end do
          exchListPtr => exchListPtr % next
        end do
      end do

      indx = 1
      do iHalo = 1, nHaloLayers
        exchListPtr => block %parinfo % verticesToRecv % halos(iHalo) % exchList
        do while(associated(exchListPtr))
          do iCell = 1, exchListPtr % nList
            vertexGhost(indx) = exchListPtr % destList(iCell)
            vertexHalo(indx) = iHalo
            indx = indx + 1
          end do
          exchListPtr => exchListPtr % next
        end do
      end do

      print *,'COPROCESS create geometry',nCells,nVertices,maxEdges,vertexDegree,nVertLevels


      call mpas_pool_get_subpool(block % structs, 'mesh', mesh)
      !call mpas_pool_get_subpool(block_ptr % structs, 'mesh', meshPool)

      !Does array member need to be replaced by anything?
      call mpas_pool_get_array(mesh, 'xCell', xCell)
      call mpas_pool_get_array(mesh, 'yCell', yCell)
      call mpas_pool_get_array(mesh, 'zCell', zCell)
      call MPAS_pool_get_array(mesh, "xVertex", xVertex)
      call MPAS_pool_get_array(mesh, "yVertex", yVertex)
      call MPAS_pool_get_array(mesh, "zVertex", zVertex)
      !From mesh or meshPool or geometryPool? 
      call mpas_pool_get_array(mesh, 'lonCell', lonCell)
      call mpas_pool_get_array(mesh, 'latCell', latCell) 
      call MPAS_pool_get_array(mesh, "lonVertex", lonVertex)
      call MPAS_pool_get_array(mesh, "latVertex", latVertex)
      call MPAS_pool_get_array(mesh, "nEdgesOnCell", nEdgesOnCell)
      call MPAS_pool_get_array(mesh, "cellsOnVertex", cellsOnVertex)
      call mpas_pool_get_array(mesh, 'vertexMask', vertexMask)
      call MPAS_pool_get_array(mesh, "verticesOnCell", verticesOnCell)
      call mpas_pool_get_array(mesh, 'cellMask', cellMask)
      call MPAS_pool_get_array(mesh, "nEdgesOnCell", nEdgesOnCell)

      call coprocessor_create_grid( &
                       nCells, maxEdges, nGhostCell, cellGhost, cellHalo, &
                       nVertices, vertexDegree, nGhostVertex, vertexGhost, vertexHalo, &
                       nVertLevels, &
                       xCell, &
                       yCell, &
                       zCell, &
                       xVertex, &
                       yVertex, &
                       zVertex, &
                       lonCell, &
                       latCell, &
                       lonVertex, &
                       latVertex, &
                       nEdgesOnCell, &
                       cellsOnVertex, &
                       vertexMask, &
                       verticesOnCell, &
                       cellMask)

      !call mpas_pool_get_subpool(block % structs, 'state', state)!!!!!
      !call mpas_pool_get_subpool(statePool, 'tracers', tracersPool)!!!!!

!     tracers => block % state % time_levs(2) % state % tracers % array
!     numTracers = size(tracers, dim=1)
      !indexT = block % state % time_levs(1) % state % index_temperature
      !indexS = block % state % time_levs(1) % state % index_salinity
!     indexT = state % index_temperature
!     indexS = state % index_salinity
 !    call coprocessor_register_tracer_data( &
 !                     indexT, &
 !                     block % state % time_levs(1) % state % tracers % constituentNames(indexT), &
 !                     numTracers, &
 !                     block % state % time_levs(1) % state % tracers % dimSizes(2), &
 !                     block % state % time_levs(1) % state % tracers % dimSizes(3), &
 !                     block % state % time_levs(1) % state % tracers % array)

      !!!!!
      !call mpas_pool_get_subpool(block % structs,'diagnostics',diagnosticsPool)

!     call coprocessor_register_data( &
!                      block % diagnostics % density % fieldName, &
!                      block % diagnostics % density % dimSizes(1), &
!                      block % diagnostics % density % dimSizes(2), &
!                      block % diagnostics % density % array)

!call mpas_pool_get_array(diag, 'temperature_250hPa', temperature_250hPa)
!call mpas_pool_get_array(diag, 'temperature_surface', temperature_surface)
!real (kind=RKIND), dimension(:,:), pointer :: pressure_base, pressure_p,
!pressure
!

!                <var name="temperature" type="real" dimensions="nVertLevels
!                nCells Time" units="K"
!                     description="temperature"
!                     packages="jedi_da"/>
!                <var name="theta" type="real" dimensions="nVertLevels nCells
!                Time" units="K"
!                     description="Potential temperature"/>
      call mpas_pool_get_array(diag, 'theta', theta)
      
      call mpas_pool_get_array(diag, 'pressure', pressure)

      call coprocessor_register_data( &
                        'theta', & !theta name
                        size(theta,dim=1), & !theta dimension1   size(theta,dim=1)???
                        size(theta,dim=2), & !theta dimension2
                        theta) !actual data

      call coprocessor_register_data( &
                        'pressure', &
                        size(pressure,dim=1), &
                        size(pressure,dim=2), &
                        pressure)

      deallocate(cellGhost)
      deallocate(cellHalo)
      deallocate(vertexGhost)
      deallocate(vertexHalo)

   end subroutine mpas_insitu_create_geometry!}}}

   subroutine mpas_insitu_load_data(domain, itime)!{{{

      implicit none
 
      type (domain_type), intent(inout) :: domain
      type (block_type), pointer :: block
      integer, intent(inout) :: itime
      !integer :: indexT, indexS, numTracers
      !real (kind=RKIND), dimension(:,:,:), pointer :: tracers
      !type (mpas_pool_type), pointer :: diagnosticsPool !!!!!
      real (kind=RKIND), dimension(:,:), pointer :: pressure, theta
      block => domain % blocklist

      !tracers => block % state % time_levs(2) % state % tracers % array
      !numTracers = size(tracers, dim=1)
      !indexT = block % state % time_levs(1) % state % index_temperature
      !indexS = block % state % time_levs(1) % state % index_salinity

!      call coprocessor_add_tracer_data( &
!                       itime, &
!                       indexT, &
!                       block % state % time_levs(1) % state % tracers % constituentNames(indexT), &
!                       numTracers, &
!                       block % state % time_levs(1) % state % tracers % dimSizes(2), &
!                       block % state % time_levs(1) % state % tracers % dimSizes(3), &
!                       block % state % time_levs(1) % state % tracers % array)
!
!      call coprocessor_add_data( &
!                       itime, &
!                       block % diagnostics % density % fieldName, &
!                       block % diagnostics % density % dimSizes(1), &
!                       block % diagnostics % density % dimSizes(2), &
!                       block % diagnostics % density % array)

      call coprocessor_add_data( &
                        theta, & !theta name
                        theta, & !theta dimension1
                        theta, & !theta dimension2
                        theta) !actual data

      call coprocessor_add_data( &
                        pressure, &
                        pressure, &
                        pressure, &
                        pressure)


   end subroutine mpas_insitu_load_data!}}}

   subroutine mpas_insitu_coprocess(domain, itime)!{{{

      implicit none

      type (domain_type), intent(inout) :: domain
      integer, intent(inout) :: itime
      integer :: doWork

      doWork = 0
      print *,'checking for COPROCESS ',itime
      call mpas_check_coprocess(itime, doWork)
      if(doWork .eq. 0) then
         return
      endif
      ! we actually need to do coprocessing
      ! the grids should already be loaded.
      call mpas_insitu_load_data(domain, itime)
      print *,'COPROCESS ',itime
      call mpas_coprocess

   end subroutine mpas_insitu_coprocess!}}}


   subroutine mpas_insitu_finalize()!{{{
 
      implicit none
 
      print *,'COPROCESS finalize'
      call mpas_finalize
 
   end subroutine mpas_insitu_finalize!}}}
 
end module mpas_paraview_catalyst
