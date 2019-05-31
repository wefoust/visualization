












! Copyright (c) 2013,  Los Alamos National Security, LLC (LANS)
! and the University Corporation for Atmospheric Research (UCAR).
!
! Unless noted otherwise source code is licensed under the BSD license.
! Additional copyright and license information can be found in the LICENSE file
! distributed with this code, or at http://mpas-dev.github.com/license.html
!
!|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
!
!  mpas_core
!
!> \brief Main driver for MPAS ocean core
!> \author Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date   September 2011
!> \details
!>  This module contains initialization and timestep drivers for 
!>  the MPAS ocean core.
!
!-----------------------------------------------------------------------

module mpas_core

   use mpas_configure
   use mpas_framework
   use mpas_timekeeping
   use mpas_dmpar
   use mpas_timer
   use mpas_io_units

   use ocn_global_diagnostics
   use ocn_time_integration
   use ocn_tendency
   use ocn_diagnostics
   use ocn_test

   use ocn_thick_hadv
   use ocn_thick_vadv
   use ocn_thick_ale
   use ocn_thick_surface_flux

   use ocn_vel_pressure_grad
   use ocn_vel_vadv
   use ocn_vel_hmix
   use ocn_vel_forcing
   use ocn_vel_coriolis

   use ocn_tracer_hmix
   use ocn_tracer_surface_flux
   use ocn_tracer_short_wave_absorption
   use ocn_gm

   use ocn_equation_of_state

   use ocn_vmix

   use ocn_time_average

   use ocn_forcing
   use ocn_sea_ice

   use ocn_constants

   type (io_output_object), save :: restart_obj

   integer :: current_outfile_frames

   type (MPAS_Clock_type) :: clock

   integer, parameter :: outputAlarmID = 1
   integer, parameter :: restartAlarmID = 2
   integer, parameter :: statsAlarmID = 3
   integer, parameter :: coupleAlarmID = 4

   type (timer_node), pointer :: globalDiagTimer, timeIntTimer, testSuiteTimer
   type (timer_node), pointer :: initDiagSolveTimer

   contains

!***********************************************************************
!
!  routine mpas_core_init
!
!> \brief   Initialize MPAS-Ocean core
!> \author  Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date    September 2011
!> \details 
!>  This routine calls all initializations required to begin a
!>  simulation with MPAS-Ocean
!
!-----------------------------------------------------------------------

   subroutine mpas_core_init(domain, startTimeStamp)!{{{

      use mpas_grid_types
      use ocn_tracer_advection
      use mpas_paraview_catalyst

      implicit none

      type (domain_type), intent(inout) :: domain
      character(len=*), intent(out) :: startTimeStamp

      real (kind=RKIND) :: dt
      type (block_type), pointer :: block
      type (dm_info) :: dminfo

      integer :: err, err_tmp
      real (kind=RKIND) :: maxDensity, maxDensity_global

      dminfo = domain % dminfo

      ! Initialize submodules before initializing blocks.
      call ocn_timestep_init(err)

      call ocn_thick_hadv_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_thick_vadv_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_thick_surface_flux_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_thick_ale_init(err_tmp)
      err = ior(err,err_tmp)

      call ocn_vel_coriolis_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_vel_pressure_grad_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_vel_vadv_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_vel_hmix_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_vel_forcing_init(err_tmp)
      err = ior(err, err_tmp)

      call ocn_tracer_hmix_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_tracer_surface_flux_init(err_tmp)
      err = ior(err, err_tmp)
      call ocn_tracer_advection_init(err_tmp)
      err = ior(err,err_tmp)
      call ocn_tracer_short_wave_absorption_init(err_tmp)
      err = ior(err,err_tmp)

      call ocn_vmix_init(domain,err_tmp)
      err = ior(err, err_tmp)

      call ocn_equation_of_state_init(err_tmp)
      err = ior(err, err_tmp)

      call ocn_tendency_init(err_tmp)
      err = ior(err,err_tmp)
      call ocn_diagnostics_init(err_tmp)
      err = ior(err,err_tmp)

      call ocn_forcing_init(err_tmp)
      err = ior(err,err_tmp)


      call ocn_global_diagnostics_init(dminfo,err_tmp)
      err = ior(err, err_tmp)

      call ocn_sea_ice_init(domain % blocklist % mesh % nVertLevels, err_tmp)
      err = ior(err, err_tmp)

      call ocn_constants_init()

      call mpas_timer_init(domain)

      if(err.eq.1) then
          call mpas_dmpar_abort(dminfo)
      endif

      call ocn_init_vert_coord(domain)

      call ocn_compute_max_level(domain)

      if (.not.config_do_restart) call ocn_init_split_timestep(domain)

      write (stdoutUnit,'(a,a)') ' Vertical coordinate movement is: ',trim(config_vert_coord_movement)

      if (config_vert_coord_movement.ne.'fixed'.and. &
          config_vert_coord_movement.ne.'uniform_stretching'.and. &
          config_vert_coord_movement.ne.'impermeable_interfaces'.and. &
          config_vert_coord_movement.ne.'user_specified') then
         write (stderrUnit,*) ' Incorrect choice of config_vert_coord_movement.'
         call mpas_dmpar_abort(dminfo)
      endif

      write (stdoutUnit,'(a,a)') ' Pressure type is: ',trim(config_pressure_gradient_type)
      if (config_pressure_gradient_type.ne.'pressure_and_zmid'.and. &
          config_pressure_gradient_type.ne.'MontgomeryPotential') then
         write (stderrUnit,*) ' Incorrect choice of config_pressure_gradient_type.'
         call mpas_dmpar_abort(dminfo)
      endif

      if(config_vert_coord_movement .ne. 'impermeable_interfaces' .and. config_pressure_gradient_type .eq. 'MontgomeryPotential') then
         write (stderrUnit,*) ' Incorrect combination of config_vert_coord_movement and config_pressure_gradient_type'
         call mpas_dmpar_abort(dminfo)
      end if

      if (config_filter_btr_mode.and. &
          config_vert_coord_movement.ne.'fixed')then
         write (stderrUnit,*) 'filter_btr_mode has only been tested with'// &
            ' config_vert_coord_movement=fixed.'
         call mpas_dmpar_abort(dminfo)
      endif

      ! find the maximum value of the meshDensity
      if (config_maxMeshDensity < 0.0) then
        maxDensity=-1
        block => domain % blocklist
        do while (associated(block))
          maxDensity = max(maxDensity, maxval(block % mesh % meshDensity % array))
          block => block % next
        end do
        call mpas_dmpar_max_real(domain % dminfo, maxDensity, maxDensity_global)
        config_maxMeshDensity = maxDensity_global
      endif

      !
      ! Initialize core
      !
      dt = config_dt

      call ocn_simulation_clock_init(domain, dt, startTimeStamp)

      block => domain % blocklist
      do while (associated(block))
         call mpas_init_block(block, block % mesh, dt, err)
         if(err.eq.1) then
             call mpas_dmpar_abort(dminfo)
         endif
         block % diagnostics % xtime % scalar = startTimeStamp 
         block => block % next
      end do

      if (config_conduct_tests) then
         call mpas_timer_start("test suite", .false., testSuiteTimer)
         call ocn_test_suite(domain,err)
         call mpas_timer_stop("test suite", testSuiteTimer)
      endif

      if (config_write_stats_on_startup) then
         call mpas_timer_start("global diagnostics", .false., globalDiagTimer)
         call ocn_compute_global_diagnostics(domain, 1 , 0, dt)
         call mpas_timer_stop("global diagnostics", globalDiagTimer)
      endif

      current_outfile_frames = 0

      !
      ! Initialize insitu coprocessing
      !
      call mpas_insitu_initialize

   end subroutine mpas_core_init!}}}

!***********************************************************************
!
!  routine mpas_simulation_clock_init
!
!> \brief   Initialize timer variables
!> \author  Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date    September 2011
!> \details 
!>  This routine initializes all timer variables
!
!-----------------------------------------------------------------------

   subroutine ocn_simulation_clock_init(domain, dt, startTimeStamp)!{{{

      implicit none

      type (domain_type), intent(inout) :: domain
      real (kind=RKIND), intent(in) :: dt
      character(len=*), intent(out) :: startTimeStamp

      type (MPAS_Time_Type) :: startTime, stopTime, alarmStartTime
      type (MPAS_TimeInterval_type) :: runDuration, timeStep, alarmTimeStep
      character(len=StrKIND) :: restartTimeStamp
      integer :: ierr

      if(config_start_time == 'file') then
        open(22,file=config_restart_timestamp_name,form='formatted',status='old')
        read(22,*) restartTimeStamp
        close(22)
        call mpas_set_time(curr_time=startTime, dateTimeString=restartTimeStamp, ierr=ierr)
      else
        call mpas_set_time(curr_time=startTime, dateTimeString=config_start_time, ierr=ierr)
      end if

      call mpas_set_timeInterval(timeStep, dt=dt, ierr=ierr)
      if (trim(config_run_duration) /= "none") then
         call mpas_set_timeInterval(runDuration, timeString=config_run_duration, ierr=ierr)
         call mpas_create_clock(clock, startTime=startTime, timeStep=timeStep, runDuration=runDuration, ierr=ierr)

         if (trim(config_stop_time) /= "none") then
            call mpas_set_time(curr_time=stopTime, dateTimeString=config_stop_time, ierr=ierr)
            if(startTime + runduration /= stopTime) then
               write(stderrUnit,*) 'Warning: config_run_duration and config_stop_time are inconsitent: using config_run_duration.'
            end if
         end if
      else if (trim(config_stop_time) /= "none") then
         call mpas_set_time(curr_time=stopTime, dateTimeString=config_stop_time, ierr=ierr)
         call mpas_create_clock(clock, startTime=startTime, timeStep=timeStep, stopTime=stopTime, ierr=ierr)
      else
          write(stderrUnit,*) 'Error: Neither config_run_duration nor config_stop_time were specified.'
          call mpas_dmpar_finalize(domain % dminfo)
      end if

      ! set output alarm
      call mpas_set_timeInterval(alarmTimeStep, timeString=config_output_interval, ierr=ierr)
      alarmStartTime = startTime + alarmTimeStep
      call mpas_add_clock_alarm(clock, outputAlarmID, alarmStartTime, alarmTimeStep, ierr=ierr)

      ! set restart alarm, if necessary
      if (trim(config_restart_interval) /= "none") then
         call mpas_set_timeInterval(alarmTimeStep, timeString=config_restart_interval, ierr=ierr)
         alarmStartTime = startTime + alarmTimeStep
         call mpas_add_clock_alarm(clock, restartAlarmID, alarmStartTime, alarmTimeStep, ierr=ierr)
      end if

      !TODO: use this code if we desire to convert config_stats_interval to alarms 
      !(must also change config_stats_interval type to character) 
      ! set stats alarm, if necessary
      if (trim(config_stats_interval) /= "none") then      
         call mpas_set_timeInterval(alarmTimeStep, timeString=config_stats_interval, ierr=ierr)
         alarmStartTime = startTime + alarmTimeStep
         call mpas_add_clock_alarm(clock, statsAlarmID, alarmStartTime, alarmTimeStep, ierr=ierr)
      end if

      call mpas_get_time(curr_time=startTime, dateTimeString=startTimeStamp, ierr=ierr)

   end subroutine ocn_simulation_clock_init!}}}

!***********************************************************************
!
!  routine mpas_init_block
!
!> \brief   Initialize blocks within MPAS-Ocean core
!> \author  Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date    September 2011
!> \details 
!>  This routine calls all block-level initializations required to begin a
!>  simulation with MPAS-Ocean
!
!-----------------------------------------------------------------------

   subroutine mpas_init_block(block, mesh, dt, err)!{{{
   
      use mpas_grid_types
      use mpas_rbf_interpolation
      use mpas_vector_operations
      use mpas_vector_reconstruction
      use mpas_tracer_advection_helpers
   
      implicit none
   
      type (block_type), intent(inout) :: block
      type (mesh_type), intent(inout) :: mesh
      real (kind=RKIND), intent(in) :: dt
      integer, intent(out) :: err
      integer :: i, iEdge, iCell, k
      integer :: err1
   
      call ocn_setup_sign_and_index_fields(mesh)
      call mpas_initialize_deriv_two(mesh, mesh % derivTwo % array, err)
      call mpas_tracer_advection_coefficients(mesh, &
          config_horiz_tracer_adv_order, mesh % derivTwo % array, mesh % advCoefs % array, &
          mesh % advCoefs3rd % array, mesh % nAdvCellsForEdge % array, mesh % advCellsForEdge % array, &
          err1, mesh % maxLevelCell % array, mesh % highOrderAdvectionMask % array, &
          mesh % boundaryCell % array)
      err = ior(err, err1)

      call ocn_time_average_init(block % average)
   
      call mpas_timer_start("diagnostic solve", .false., initDiagSolveTimer)
      call ocn_diagnostic_solve(dt,  block % state % time_levs(1) % state, block % forcing, mesh, block % diagnostics, block % scratch)
      call mpas_timer_stop("diagnostic solve", initDiagSolveTimer)

      ! Compute velocity transport, used in advection terms of layerThickness and tracer tendency
      block % diagnostics % uTransport % array(:,:) &
            = block % state % time_levs(1) % state % normalVelocity % array(:,:) &
            + block % diagnostics % uBolusGM % array(:,:)

      call ocn_compute_mesh_scaling(mesh)
 
      call mpas_rbf_interp_initialize(mesh)
      call mpas_initialize_tangent_vectors(mesh, mesh % edgeTangentVectors % array)

      call mpas_init_reconstruct(mesh)
      call mpas_reconstruct(mesh, block % state % time_levs(1) % state % normalVelocity % array,                  &
                       block % diagnostics % normalVelocityX % array,            &
                       block % diagnostics % normalVelocityY % array,            &
                       block % diagnostics % normalVelocityZ % array,            &
                       block % diagnostics % normalVelocityZonal % array,        &
                       block % diagnostics % normalVelocityMeridional % array    &
                      )

      ! initialize velocities and tracers on land to be zero.

      block % mesh % areaCell % array(block % mesh % nCells+1) = -1.0e34

      block % state % time_levs(1) % state % layerThickness % array(:,block % mesh % nCells+1) = 0.0

      do iEdge=1,block % mesh % nEdges
         block % state % time_levs(1) % state % normalVelocity % array( &
             block % mesh % maxLevelEdgeTop % array(iEdge)+1 &
            :block % mesh % maxLevelEdgeBot % array(iEdge), iEdge) = 0.0

         block % state % time_levs(1) % state % normalVelocity % array( &
             block % mesh % maxLevelEdgeBot % array(iEdge)+1: &
             block % mesh % nVertLevels,iEdge) = -1.0e34
      end do
      do iCell=1,block % mesh % nCells
         block % state % time_levs(1) % state % tracers % array( &
            :, block % mesh % maxLevelCell % array(iCell)+1 &
              :block % mesh % nVertLevels,iCell) =  -1.0e34
      end do

      do i=2,nTimeLevs
        call mpas_copy_state(block % state % time_levs(i) % state, &
                             block % state % time_levs(1) % state)
      end do

   end subroutine mpas_init_block!}}}
   
!***********************************************************************
!
!  routine mpas_core_run
!
!> \brief   Main driver for MPAS-Ocean time-stepping
!> \author  Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date    September 2011
!> \details 
!>  This routine includes the time-stepping loop, and calls timer
!>  routines to write output and restart files.
!
!-----------------------------------------------------------------------

   subroutine mpas_core_run(domain, output_obj, output_frame)!{{{
   
      use mpas_kind_types
      use mpas_grid_types
      use mpas_io_output
      use mpas_paraview_catalyst
      use mpas_timer
   
      implicit none
   
      type (domain_type), intent(inout) :: domain
      type (io_output_object), intent(inout) :: output_obj
      integer, intent(inout) :: output_frame
   
      integer :: itimestep
      real (kind=RKIND) :: dt
      type (block_type), pointer :: block_ptr

      type (MPAS_Time_Type) :: currTime
      character(len=StrKIND) :: timeStamp
      integer :: ierr
   
      ! Eventually, dt should be domain specific
      dt = config_dt

      currTime = mpas_get_clock_time(clock, MPAS_NOW, ierr)
      call mpas_get_time(curr_time=currTime, dateTimeString=timeStamp, ierr=ierr)
      write(stderrUnit,*) 'Initial time ', trim(timeStamp)

      if (config_write_output_on_startup) then
         call ocn_write_output_frame(output_obj, output_frame, domain)
      endif
      block_ptr => domain % blocklist

      call mpas_insitu_create_geometry(domain)

      do while(associated(block_ptr))
        call ocn_time_average_init(block_ptr % average)
        block_ptr => block_ptr % next
      end do

      ! During integration, time level 1 stores the model state at the beginning of the
      !   time step, and time level 2 stores the state advanced dt in time by timestep(...)
      itimestep = 0
      do while (.not. mpas_is_clock_stop_time(clock))

         itimestep = itimestep + 1
         call mpas_advance_clock(clock)

         currTime = mpas_get_clock_time(clock, MPAS_NOW, ierr)
         call mpas_get_time(curr_time=currTime, dateTimeString=timeStamp, ierr=ierr)
         write(stderrUnit,*) 'Doing timestep ', trim(timeStamp)
   
         block_ptr => domain % blocklist
         do while(associated(block_ptr))
           call ocn_forcing_build_arrays(block_ptr % mesh, block_ptr % state % time_levs(1) % state, block_ptr % forcing, ierr)
           call ocn_forcing_build_transmission_array(block_ptr % mesh, block_ptr % state % time_levs(1) % state, block_ptr % forcing, ierr)
           block_ptr => block_ptr % next
         end do

         call mpas_timer_start("time integration", .false., timeIntTimer)
         call mpas_timestep(domain, itimestep, dt, timeStamp)
         call mpas_timer_stop("time integration", timeIntTimer)
   
         ! Move time level 2 fields back into time level 1 for next time step
         block_ptr => domain % blocklist
         do while(associated(block_ptr))
            call mpas_shift_time_levels_state(block_ptr % state)
            block_ptr => block_ptr % next
         end do
      
         !
         ! Do coprocessing
         !
         block_ptr => domain % blocklist
         do while (associated(block_ptr))
             call ocn_time_average_normalize(block_ptr % average)
             block_ptr => block_ptr % next
         end do

         call mpas_insitu_coprocess(domain, itimestep)

         block_ptr => domain % blocklist
         do while (associated(block_ptr))
             call ocn_time_average_init(block_ptr % average)
             block_ptr => block_ptr % next
         end do

         if (mpas_is_alarm_ringing(clock, outputAlarmID, ierr=ierr)) then
            call mpas_reset_clock_alarm(clock, outputAlarmID, ierr=ierr)
            ! output_frame will always be > 1 here unless it was reset after the 
            ! maximum number of frames per outfile was reached.
            if(output_frame == 1) then
               call mpas_output_state_finalize(output_obj, domain % dminfo)
               call mpas_output_state_init(output_obj, domain, "OUTPUT", trim(timeStamp))
            end if

            block_ptr => domain % blocklist
            do while (associated(block_ptr))
                call ocn_time_average_normalize(block_ptr % average)
                block_ptr => block_ptr % next
            end do

            call ocn_write_output_frame(output_obj, output_frame, domain)

            block_ptr => domain % blocklist
            do while (associated(block_ptr))
                call ocn_time_average_init(block_ptr % average)
                block_ptr => block_ptr % next
            end do
         end if

         if (mpas_is_alarm_ringing(clock, restartAlarmID, ierr=ierr)) then
            call mpas_reset_clock_alarm(clock, restartAlarmID, ierr=ierr)

            ! Write one restart time per file
            call mpas_output_state_init(restart_obj, domain, "RESTART", trim(timeStamp))
            call mpas_output_state_for_domain(restart_obj, domain, 1)
            call mpas_output_state_finalize(restart_obj, domain % dminfo)
         end if

      end do

   end subroutine mpas_core_run!}}}
   
   subroutine ocn_write_output_frame(output_obj, output_frame, domain)!{{{
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   ! Compute diagnostic fields for a domain and write model state to output file
   !
   ! Input/Output: domain - contains model state; diagnostic field are computed
   !                        before returning
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   
      use mpas_grid_types
      use mpas_io_output
      use mpas_vector_reconstruction
   
      implicit none
   
      integer, intent(inout) :: output_frame
      type (domain_type), intent(inout) :: domain
      type (io_output_object), intent(inout) :: output_obj
   
      integer :: i, j, k
      integer :: eoe
      type (block_type), pointer :: block_ptr
   
      ! Compute output diagnostics
      block_ptr => domain % blocklist
      do while (associated(block_ptr))
         call ocn_compute_output_diagnostics(block_ptr % state % time_levs(1) % state, block_ptr % mesh)

         call mpas_allocate_scratch_field(block_ptr % scratch % windStressFull, .true.)
         call mpas_allocate_scratch_field(block_ptr % scratch % windStressX, .true.)
         call mpas_allocate_scratch_field(block_ptr % scratch % windStressY, .true.)
         call mpas_allocate_scratch_field(block_ptr % scratch % windStressZ, .true.)
         call mpas_allocate_scratch_field(block_ptr % scratch % windStressZonal, .true.)
         call mpas_allocate_scratch_field(block_ptr % scratch % windStressMeridional, .true.)

         block_ptr % scratch % windStressFull % array = 0.0_RKIND
         block_ptr % scratch % windStressFull % array(1,:) = block_ptr % forcing % surfaceWindStress % array

         call mpas_reconstruct(block_ptr % mesh, block_ptr % scratch % windStressFull % array, &
                               block_ptr % scratch % windStressX % array, &
                               block_ptr % scratch % windStressY % array, &
                               block_ptr % scratch % windStressZ % array, &
                               block_ptr % scratch % windStressZonal % array, &
                               block_ptr % scratch % windStressMeridional % array)

         block_ptr % diagnostics % windStressZonalDiag % array(:) = block_ptr % scratch % windStressZonal % array(1,:)
         block_ptr % diagnostics % windStressMeridionalDiag % array(:) = block_ptr % scratch % windStressMeridional % array(1,:)

         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressFull, .true.)
         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressX, .true.)
         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressY, .true.)
         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressZ, .true.)
         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressZonal, .true.)
         call mpas_deallocate_scratch_field(block_ptr % scratch % windStressMeridional, .true.)

         block_ptr => block_ptr % next
      end do
   
      call mpas_output_state_for_domain(output_obj, domain, output_frame)
      output_frame = output_frame + 1

      ! reset frame if the maximum number of frames per outfile has been reached
      if (config_frames_per_outfile > 0) then
         current_outfile_frames = current_outfile_frames + 1            
         if(current_outfile_frames >= config_frames_per_outfile) then
            current_outfile_frames = 0
            output_frame = 1
         end if
      end if
   
   end subroutine ocn_write_output_frame!}}}
   
   subroutine ocn_compute_output_diagnostics(state, mesh)!{{{
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   ! Compute diagnostic fields for a domain
   !
   ! Input: state - contains model prognostic fields
   !        mesh  - contains mesh metadata
   !
   ! Output: state - upon returning, diagnostic fields will have be computed
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   
      use mpas_grid_types
   
      implicit none
   
      type (state_type), intent(inout) :: state
      type (mesh_type), intent(in) :: mesh
   
      integer :: i, eoe
      integer :: iEdge, k
   
   end subroutine ocn_compute_output_diagnostics!}}}
   
!***********************************************************************
!
!  routine mpas_core_run
!
!> \brief   Sub-driver for MPAS-Ocean time-stepping
!> \author  Doug Jacobsen, Mark Petersen, Todd Ringler
!> \date    September 2011
!> \details 
!>  This routine calls the time integration routine within a time-stepping loop.
!
!-----------------------------------------------------------------------

   subroutine mpas_timestep(domain, itimestep, dt, timeStamp)!{{{
   
      use mpas_kind_types
      use mpas_grid_types
   
      implicit none
   
      type (domain_type), intent(inout) :: domain 
      integer, intent(in) :: itimestep
      real (kind=RKIND), intent(in) :: dt
      character(len=*), intent(in) :: timeStamp

      type (block_type), pointer :: block_ptr
      integer :: ierr
   
      call ocn_timestep(domain, dt, timeStamp)

      !if (config_stats_interval > 0) then
      !    if (mod(itimestep, config_stats_interval) == 0) then
      !       call mpas_timer_start("global diagnostics", .false., globalDiagTimer)
      !       call ocn_compute_global_diagnostics(domain, 2, itimestep, dt);
      !       call mpas_timer_stop("global diagnostics", globalDiagTimer)
      !    end if
      !end if

      !TODO: replace the above code block with this if we desire to convert config_stats_interval to use alarms
      if (mpas_is_alarm_ringing(clock, statsAlarmID, ierr=ierr)) then
         call mpas_reset_clock_alarm(clock, statsAlarmID, ierr=ierr)

!        block_ptr => domain % blocklist
!        if (associated(block_ptr % next)) then
!           write(stderrUnit,*) 'Error: computeGlobalDiagnostics assumes ',&
!                      'that there is only one block per processor.'
!        end if
   
         call mpas_timer_start("global diagnostics")
         call ocn_compute_global_diagnostics(domain, 2, itimestep, dt);
      !  call ocn_compute_global_diagnostics(domain % dminfo, &
      !           block_ptr % state % time_levs(2) % state, block_ptr % mesh, &
      !           timeStamp, dt)
         call mpas_timer_stop("global diagnostics")
      end if

   end subroutine mpas_timestep!}}}

   subroutine ocn_init_vert_coord(domain)!{{{
   ! Initialize zlevel-type variables and adjust initial conditions for
   ! partial bottom cells.

      use mpas_grid_types
      use mpas_configure

      implicit none

      type (domain_type), intent(inout) :: domain
      type (dm_info) :: dminfo

      integer :: i, iCell, iEdge, iVertex, k, km1, nCells, num_tracers
      type (block_type), pointer :: block

      integer :: iTracer, cell, cell1, cell2
      real (kind=RKIND) :: normalThicknessFluxSum, thicknessSum, hEdge1, zMidPBC

      integer, dimension(:), pointer :: maxLevelCell
      real (kind=RKIND), dimension(:), pointer :: refBottomDepth, &
         refBottomDepthTopOfCell, vertCoordMovementWeights, bottomDepth, refZMid, refLayerThickness
      real (kind=RKIND), dimension(:), allocatable :: minBottomDepth, minBottomDepthMid, zMidZLevel
         
      real (kind=RKIND), dimension(:,:), pointer :: layerThickness, restingThickness
      real (kind=RKIND), dimension(:,:,:), pointer :: tracers
      integer :: nVertLevels
      logical :: consistentSSH

      ! Initialize z-level mesh variables from h, read in from input file.
      block => domain % blocklist
      do while (associated(block))

         layerThickness => block % state % time_levs(1) % state % layerThickness % array
         tracers => block % state % time_levs(1) % state % tracers % array
         refBottomDepth => block % mesh % refBottomDepth % array
         refBottomDepthTopOfCell => block % mesh % refBottomDepthTopOfCell % array
         bottomDepth => block % mesh % bottomDepth % array
         vertCoordMovementWeights => block % mesh % vertCoordMovementWeights % array
         maxLevelCell => block % mesh % maxLevelCell % array

         restingThickness => block % verticalMesh % restingThickness % array
         refZMid => block % verticalMesh % refZMid % array
         refLayerThickness => block % verticalMesh % refLayerThickness % array

         nCells      = block % mesh % nCells
         nVertLevels = block % mesh % nVertLevels
         num_tracers = size(tracers, dim=1)

         ! TopOfCell needed where zero depth for the very top may be referenced.
         refBottomDepthTopOfCell(1) = 0.0
         do k = 1,nVertLevels
            refBottomDepthTopOfCell(k+1) = refBottomDepth(k)
            refLayerThickness(k) = refBottomDepth(k) - refBottomDepthTopOfCell(k)
            refZMid(k) = - refBottomDepthTopOfCell(1) - refLayerThickness(k)/2.0
         end do

         ! Initialization of vertCoordMovementWeights. This determines how SSH perturbations
         ! are distributed throughout the column.
         if (config_vert_coord_movement.eq.'fixed') then

           vertCoordMovementWeights = 0.0
           vertCoordMovementWeights(1) = 1.0

         elseif (config_vert_coord_movement.eq.'uniform_stretching') then

            vertCoordMovementWeights = 1.0

         endif

         ! Initial condition files (ocean.nc, produced by basin) include a realistic
         ! bottomDepth variable and h,T,S variables for full thickness cells.
         ! If running with pbcs, set config_alter_ICs_for_pbc='zlevel_pbcs_on'. Then thin pbc cells
         !    will be changed, and h,T,S will be altered to match the pbcs.
         ! If running without pbcs, set config_alter_ICs_for_pbc='zlevel_pbcs_off'. Then 
         !    bottomDepth will be altered so it is full cells everywhere.
         !    If your input file does not include bottomDepth, the false option will
         !    initialize bottomDepth correctly for a non-pbc run.

         if (.not.config_do_restart.and.config_alter_ICs_for_pbcs) then

            if (config_pbc_alteration_type.eq.'partial_cell') then

               write (stdoutUnit,'(a)') ' Altering bottomDepth to avoid very thin cells.'
               write (stdoutUnit,'(a)') ' Altering layerThickness and tracer initial conditions to conform with partial bottom cells.'

               allocate(minBottomDepth(nVertLevels),minBottomDepthMid(nVertLevels),zMidZLevel(nVertLevels))

               ! min_pbc_fraction restricts pbcs from being too small.
               ! A typical value is 10%, so pbcs must occupy at least 10% of the cell thickness.
               ! If min_pbc_fraction = 0.0, bottomDepth gives the actual depth for that cell.
               ! If min_pbc_fraction = 1.0, bottomDepth reverts to discrete z-level depths, same 
               !    as partial_bottom_cells = .false.

               minBottomDepth(1) = (1.0-config_min_pbc_fraction)*refBottomDepth(1)
               minBottomDepthMid(1) = 0.5*(minBottomDepth(1) + refBottomDepthTopOfCell(1))
               zMidZLevel(1) = - 0.5*(refBottomDepth(1) + refBottomDepthTopOfCell(1))
               do k=2,nVertLevels
                  minBottomDepth(k) = refBottomDepth(k) - (1.0-config_min_pbc_fraction)*(refBottomDepth(k) - refBottomDepth(k-1))
                  minBottomDepthMid(k) = 0.5*(minBottomDepth(k) + refBottomDepthTopOfCell(k))
                  zMidZLevel(k) = - 0.5*(refBottomDepth(k) + refBottomDepthTopOfCell(k))
               enddo

               do iCell=1,nCells

                  ! Change value of maxLevelCell for partial bottom cells
                  k = maxLevelCell(iCell)
                  if (bottomDepth(iCell).lt.minBottomDepthMid(k)) then
                     ! Round up to cell above
                     maxLevelCell(iCell) = maxLevelCell(iCell) - 1
                     bottomDepth(iCell) = refBottomDepth(maxLevelCell(iCell))
                  elseif (bottomDepth(iCell).lt.minBottomDepth(k)) then
                     ! Round down cell to the min_pbc_fraction.
                     bottomDepth(iCell) = minBottomDepth(k)
                  endif
                  ! reset k to new value of maxLevelCell
                  k = maxLevelCell(iCell)

                  ! Alter thickness of bottom level to account for PBC
                  layerThickness(k,iCell) = bottomDepth(iCell) - refBottomDepthTopOfCell(k) 

                  ! Linearly interpolate the initial T&S for new location of bottom cell for PBCs
                  zMidPBC = -0.5*(bottomDepth(iCell) + refBottomDepthTopOfCell(k))
                  km1 = max(k-1,1)
                  do iTracer=1,num_tracers
                     tracers(iTracer,k,iCell) = tracers(iTracer,k,iCell) &
                        + (tracers(iTracer,km1,iCell) - tracers(iTracer,k,iCell)) &
                         /(zMidZLevel(km1)-zMidZLevel(k)+1.0e-16) &
                         *(zMidPBC - zMidZLevel(k))
                  enddo

               enddo  

               deallocate(minBottomDepth,zMidZLevel)

            elseif (config_pbc_alteration_type.eq.'full_cell') then

               do iCell = 1,nCells
                  bottomDepth(iCell) = refBottomDepth(maxLevelCell(iCell))
               enddo

            else

                write (stderrUnit,*) ' Incorrect choice of config_pbc_alteration_type.'
                call mpas_dmpar_abort(dminfo)

            endif

         endif ! .not.config_do_restart

         if (.not.config_do_restart) then

            ! Layer thickness when the ocean is at rest, i.e. without SSH or internal perturbations.
            ! This is applied only from the initial condition
            if (config_set_restingThickness_to_IC) then
                restingThickness = layerThickness
            endif

         endif ! .not.config_do_restart.and.config_alter_ICs_for_pbcs

         if (config_check_ssh_consistency) then
            consistentSSH = .true.
            do iCell = 1,nCells
               ! Check if abs(ssh)>2m.  If so, print warning.
               if (abs(sum(layerThickness(1:maxLevelCell(iCell),iCell))-bottomDepth(iCell))>2.0) then
                  consistentSSH = .false.
                  write (stderrUnit,'(a)') ' Warning: abs(sum(h)-bottomDepth)>2m.  Most likely, initial layerThickness does not match bottomDepth.'
                  write (stderrUnit,*) ' iCell, K=maxLevelCell(iCell), bottomDepth(iCell),sum(h),bottomDepth: ', &
                                iCell, maxLevelCell(iCell), bottomDepth(iCell),sum(layerThickness(1:maxLevelCell(iCell),iCell)),bottomDepth(iCell), &
                                layerThickness(maxLevelCell(iCell),iCell)
               endif
            enddo

            if (.not. consistentSSH) then
               write(stderrUnit,*) 'Warning: SSH is not consistent. Most likely, initial layerThickness does not match bottomDepth.'
            end if

         endif ! config_check_ssh_consistency

         if (config_check_zlevel_consistency) then
            do iCell = 1,nCells
               ! Check that bottomDepth and maxLevelCell match.  Some older meshs do not have the bottomDepth variable.
               if (bottomDepth(iCell) > refBottomDepth(maxLevelCell(iCell)).or. &
                   bottomDepth(iCell) < refBottomDepthTopOfCell(maxLevelCell(iCell))) then
                  write (stderrUnit,'(a)') ' fatal error: bottomDepth and maxLevelCell do not match:'
                  write (stderrUnit,'(a,2i5,10f10.2)') ' iCell, maxLevelCell(iCell), bottomDepth(iCell): ', &
                                iCell, maxLevelCell(iCell), bottomDepth(iCell)
                  write (stderrUnit,'(a,10f10.2)') ' refBottomDepth(maxLevelCell(iCell)), refBottomDepthTopOfCell(maxLevelCell(iCell)): ', &
                                refBottomDepth(maxLevelCell(iCell)), refBottomDepthTopOfCell(maxLevelCell(iCell))
                  call mpas_dmpar_abort(dminfo)
               endif

            enddo
         endif

      block => block % next
      end do

   end subroutine ocn_init_vert_coord!}}}

   subroutine ocn_init_split_timestep(domain)!{{{
   ! Initialize splitting variables

      use mpas_grid_types
      use mpas_configure

      implicit none

      type (domain_type), intent(inout) :: domain

      integer :: i, iCell, iEdge, iVertex, k
      type (block_type), pointer :: block

      integer :: iTracer, cell, cell1, cell2
      real (kind=RKIND) :: normalThicknessFluxSum, layerThicknessSum, layerThicknessEdge1
      real (kind=RKIND), dimension(:), pointer :: refBottomDepth
         
      real (kind=RKIND), dimension(:,:), pointer :: layerThickness
      integer :: nVertLevels

      ! Initialize z-level mesh variables from h, read in from input file.
      block => domain % blocklist
      do while (associated(block))

         layerThickness          => block % state % time_levs(1) % state % layerThickness % array
         refBottomDepth => block % mesh % refBottomDepth % array
         nVertLevels = block % mesh % nVertLevels

         ! Compute barotropic velocity at first timestep
         ! This is only done upon start-up.
         if (trim(config_time_integrator) == 'unsplit_explicit') then
            block % state % time_levs(1) % state % normalBarotropicVelocity % array(:) = 0.0

              block % state % time_levs(1) % state % normalBaroclinicVelocity % array(:,:) &
            = block % state % time_levs(1) % state % normalVelocity % array(:,:) 

         elseif (trim(config_time_integrator) == 'split_explicit') then

            if (config_filter_btr_mode) then
               do iCell=1,block % mesh % nCells
                  block % state % time_levs(1) % state % layerThickness % array(1,iCell) & 
                = block % mesh % refBottomDepth % array(1)
               enddo
            endif 

            do iEdge=1,block % mesh % nEdges
               cell1 = block % mesh % cellsOnEdge % array(1,iEdge)
               cell2 = block % mesh % cellsOnEdge % array(2,iEdge)

               ! normalBarotropicVelocity = sum(u)/sum(h) on each column
               ! ocn_diagnostic_solve has not yet been called, so compute hEdge 
               ! just for this edge.

               ! thicknessSum is initialized outside the loop because on land boundaries 
               ! maxLevelEdgeTop=0, but I want to initialize thicknessSum with a 
               ! nonzero value to avoid a NaN.
               layerThicknessEdge1 = 0.5*( &
                   block % state % time_levs(1) % state % layerThickness % array(1,cell1) & 
                 + block % state % time_levs(1) % state % layerThickness % array(1,cell2) ) 
               normalThicknessFluxSum = layerThicknessEdge1*block % state % time_levs(1) % state % normalVelocity % array(1,iEdge)
               layerThicknessSum = layerThicknessEdge1

               do k=2,block % mesh % maxLevelEdgeTop % array(iEdge)
                  ! ocn_diagnostic_solve has not yet been called, so compute hEdge 
                  ! just for this edge.
                  layerThicknessEdge1 = 0.5*( &
                      block % state % time_levs(1) % state % layerThickness % array(k,cell1) & 
                    + block % state % time_levs(1) % state % layerThickness % array(k,cell2) ) 

                  normalThicknessFluxSum = normalThicknessFluxSum &
                     + layerThicknessEdge1*block % state % time_levs(1) % state % normalVelocity % array(k,iEdge)
                  layerThicknessSum = layerThicknessSum + layerThicknessEdge1

               enddo
               block % state % time_levs(1) % state % normalBarotropicVelocity % array(iEdge) = normalThicknessFluxSum/layerThicknessSum

               ! normalBaroclinicVelocity(k,iEdge) = normalVelocity(k,iEdge) - normalBarotropicVelocity(iEdge)
               do k=1,block % mesh % maxLevelEdgeTop % array(iEdge)
                 block % state % time_levs(1) % state % normalBaroclinicVelocity % array(k,iEdge) &
                 = block % state % time_levs(1) % state % normalVelocity % array(k,iEdge) &
                 - block % state % time_levs(1) % state % normalBarotropicVelocity % array(iEdge)
               enddo

               ! normalBaroclinicVelocity=0, normalVelocity=0 on land cells
               do k=block % mesh % maxLevelEdgeTop % array(iEdge)+1, block % mesh % nVertLevels
                 block % state % time_levs(1) % state % normalBaroclinicVelocity % array(k,iEdge) = 0.0
                 block % state % time_levs(1) % state % normalVelocity % array(k,iEdge) = 0.0
               enddo
            enddo

            if (config_filter_btr_mode) then
               ! filter normalBarotropicVelocity out of initial condition
                block % state % time_levs(1) % state % normalVelocity % array(:,:) &
              = block % state % time_levs(1) % state % normalBaroclinicVelocity % array(:,:)

               block % state % time_levs(1) % state % normalBarotropicVelocity % array(:) = 0.0
            endif 

         endif

      block => block % next
      end do

   end subroutine ocn_init_split_timestep!}}}

subroutine ocn_compute_max_level(domain)!{{{
! Initialize maxLevel and boundary mesh variables.

   use mpas_grid_types
   use mpas_configure
   use mpas_constants

   implicit none

   type (domain_type), intent(inout) :: domain

   integer :: i, iCell, iEdge, iVertex, k
   type (block_type), pointer :: block

   integer :: nCells, nEdges, nVertices, nVertLevels, vertexDegree

   integer, dimension(:), pointer :: &
      maxLevelCell, maxLevelEdgeTop, maxLevelEdgeBot, &
      maxLevelVertexTop, maxLevelVertexBot
   integer, dimension(:,:), pointer :: &
      cellsOnEdge, cellsOnVertex, boundaryEdge, boundaryCell, &
      boundaryVertex, verticesOnEdge, edgeMask, cellMask, vertexMask

   ! Initialize z-level mesh variables from h, read in from input file.
   block => domain % blocklist
   do while (associated(block))

      maxLevelCell => block % mesh % maxLevelCell % array
      maxLevelEdgeTop => block % mesh % maxLevelEdgeTop % array
      maxLevelEdgeBot => block % mesh % maxLevelEdgeBot % array
      maxLevelVertexTop => block % mesh % maxLevelVertexTop % array
      maxLevelVertexBot => block % mesh % maxLevelVertexBot % array
      cellsOnEdge    => block % mesh % cellsOnEdge % array
      cellsOnVertex  => block % mesh % cellsOnVertex % array
      verticesOnEdge => block % mesh % verticesOnEdge % array
      boundaryEdge   => block % mesh % boundaryEdge % array
      boundaryCell   => block % mesh % boundaryCell % array
      boundaryVertex => block % mesh % boundaryVertex % array
      edgeMask => block % mesh % edgeMask % array
      cellMask => block % mesh % cellMask % array
      vertexMask => block % mesh % vertexMask % array

      nCells      = block % mesh % nCells
      nEdges      = block % mesh % nEdges
      nVertices   = block % mesh % nVertices
      nVertLevels = block % mesh % nVertLevels
      vertexDegree = block % mesh % vertexDegree

      ! maxLevelEdgeTop is the minimum (shallowest) of the surrounding cells
      do iEdge=1,nEdges
         maxLevelEdgeTop(iEdge) = &
            min( maxLevelCell(cellsOnEdge(1,iEdge)), &
                 maxLevelCell(cellsOnEdge(2,iEdge)) )
      end do 
      maxLevelEdgeTop(nEdges+1) = 0

      ! maxLevelEdgeBot is the maximum (deepest) of the surrounding cells
      do iEdge=1,nEdges
         maxLevelEdgeBot(iEdge) = &
            max( maxLevelCell(cellsOnEdge(1,iEdge)), &
                 maxLevelCell(cellsOnEdge(2,iEdge)) )
      end do 
      maxLevelEdgeBot(nEdges+1) = 0

      ! maxLevelVertexBot is the maximum (deepest) of the surrounding cells
      do iVertex = 1,nVertices
         maxLevelVertexBot(iVertex) = maxLevelCell(cellsOnVertex(1,iVertex))
         do i=2,vertexDegree
            maxLevelVertexBot(iVertex) = &
               max( maxLevelVertexBot(iVertex), &
                    maxLevelCell(cellsOnVertex(i,iVertex)))
         end do
      end do 
      maxLevelVertexBot(nVertices+1) = 0

      ! maxLevelVertexTop is the minimum (shallowest) of the surrounding cells
      do iVertex = 1,nVertices
         maxLevelVertexTop(iVertex) = maxLevelCell(cellsOnVertex(1,iVertex))
         do i=2,vertexDegree
            maxLevelVertexTop(iVertex) = &
               min( maxLevelVertexTop(iVertex), &
                    maxLevelCell(cellsOnVertex(i,iVertex)))
         end do
      end do 
      maxLevelVertexTop(nVertices+1) = 0

      ! set boundary edge
      boundaryEdge(:,1:nEdges+1)=1
      edgeMask(:,1:nEdges+1)=0
      do iEdge=1,nEdges
         boundaryEdge(1:maxLevelEdgeTop(iEdge),iEdge)=0
         edgeMask(1:maxLevelEdgeTop(iEdge),iEdge)=1
      end do 

      !
      ! Find cells and vertices that have an edge on the boundary
      !
      boundaryCell(:,1:nCells+1) = 0
      cellMask(:,1:nCells+1) = 0
      boundaryVertex(:,1:nVertices+1) = 0
      vertexMask(:,1:nVertices+1) = 0
      do iEdge=1,nEdges
         do k=1,nVertLevels
            if (boundaryEdge(k,iEdge).eq.1) then
               boundaryCell(k,cellsOnEdge(1,iEdge)) = 1
               boundaryCell(k,cellsOnEdge(2,iEdge)) = 1
               boundaryVertex(k,verticesOnEdge(1,iEdge)) = 1
               boundaryVertex(k,verticesOnEdge(2,iEdge)) = 1
            endif
         end do
      end do

      do iCell = 1, nCells
         do k = 1, nVertLevels
            if ( maxLevelCell(iCell) >= k ) then
               cellMask(k, iCell) = 1
            end if
         end do
      end do

      do iVertex = 1, nVertices
         do k = 1, nVertLevels
            if ( maxLevelVertexBot(iVertex) >= k ) then
               vertexMask(k, iVertex) = 1
            end if
         end do
      end do

      block => block % next
   end do

   ! Note: We do not update halos on maxLevel* variables.  I want the
   ! outside edge of a halo to be zero on each processor.

end subroutine ocn_compute_max_level!}}}
   
   subroutine mpas_core_finalize(domain)!{{{
   
      use mpas_grid_types
      use mpas_paraview_catalyst
   
      implicit none

      type (domain_type), intent(inout) :: domain 
      integer :: ierr

      call mpas_destroy_clock(clock, ierr)

      !
      ! Finalize insitu coprocessing
      !
      call mpas_insitu_finalize

   end subroutine mpas_core_finalize!}}}

   subroutine ocn_compute_mesh_scaling(mesh)!{{{

      use mpas_grid_types
      use mpas_configure

      implicit none

      type (mesh_type), intent(inout) :: mesh

      integer :: iEdge, cell1, cell2
      real (kind=RKIND), dimension(:), pointer :: meshDensity, meshScalingDel2, meshScalingDel4, meshScaling

      meshDensity => mesh % meshDensity % array
      meshScalingDel2 => mesh % meshScalingDel2 % array
      meshScalingDel4 => mesh % meshScalingDel4 % array
      meshScaling     => mesh % meshScaling     % array

      !
      ! Compute the scaling factors to be used in the del2 and del4 dissipation
      !
      meshScalingDel2(:) = 1.0
      meshScalingDel4(:) = 1.0
      meshScaling(:)     = 1.0
      if (config_hmix_ScaleWithMesh) then
         do iEdge=1,mesh%nEdges
            cell1 = mesh % cellsOnEdge % array(1,iEdge)
            cell2 = mesh % cellsOnEdge % array(2,iEdge)
            meshScalingDel2(iEdge) = 1.0 / ( ((meshDensity(cell1) + meshDensity(cell2) )/2.0)/config_maxMeshDensity)**(3.0/4.0)  ! goes as dc**3
            meshScalingDel4(iEdge) = 1.0 / ( ((meshDensity(cell1) + meshDensity(cell2) )/2.0)/config_maxMeshDensity)**(3.0/4.0)  ! goes as dc**3
            meshScaling(iEdge)     = 1.0 / ( ((meshDensity(cell1) + meshDensity(cell2) )/2.0)/config_maxMeshDensity)**(1.0/4.0)
         end do
      end if

   end subroutine ocn_compute_mesh_scaling!}}}

   subroutine ocn_setup_sign_and_index_fields(mesh)!{{{

       type (mesh_type), intent(inout) :: mesh

       integer, dimension(:), pointer :: nEdgesOnCell
       integer, dimension(:,:), pointer :: edgesOnCell, edgesOnVertex, cellsOnVertex, cellsOnEdge, verticesOnCell, verticesOnEdge
       integer, dimension(:,:), pointer :: edgeSignOnCell, edgeSignOnVertex, kiteIndexOnCell

       integer :: nCells, nEdges, nVertices, vertexDegree
       integer :: iCell, iEdge, iVertex, i, j, k

       nCells = mesh % nCells
       nEdges = mesh % nEdges
       nVertices = mesh % nVertices
       vertexDegree = mesh % vertexDegree

       nEdgesOnCell => mesh % nEdgesOnCell % array
       edgesOnCell => mesh % edgeSOnCell % array
       edgesOnVertex => mesh % edgesOnVertex % array
       cellsOnVertex => mesh % cellsOnVertex % array
       cellsOnEdge => mesh % cellsOnEdge % array
       verticesOnCell => mesh % verticesOnCell % array
       verticesOnEdge => mesh % verticesOnEdge % array
       edgeSignOnCell => mesh % edgeSignOnCell % array
       edgeSignOnVertex => mesh % edgeSignOnVertex % array
       kiteIndexOnCell => mesh % kiteIndexOnCell % array

       edgeSignOnCell = 0.0_RKIND
       edgeSignOnVertex = 0.0_RKIND
       kiteIndexOnCell = 0.0_RKIND

       do iCell = 1, nCells
         do i = 1, nEdgesOnCell(iCell) 
           iEdge = edgesOnCell(i, iCell)
           iVertex = verticesOnCell(i, iCell)

           ! Vector points from cell 1 to cell 2
           if(iCell == cellsOnEdge(1, iEdge)) then
             edgeSignOnCell(i, iCell) = -1
           else
             edgeSignOnCell(i, iCell) =  1
           end if

           do j = 1, vertexDegree
             if(cellsOnVertex(j, iVertex) == iCell) then
               kiteIndexOnCell(i, iCell) = j
             end if
           end do
         end do
       end do

       do iVertex = 1, nVertices
         do i = 1, vertexDegree
           iEdge = edgesOnVertex(i, iVertex)

           ! Vector points from vertex 1 to vertex 2
           if(iVertex == verticesOnEdge(1, iEdge)) then
             edgeSignOnVertex(i, iVertex) = -1
           else
             edgeSignOnVertex(i, iVertex) =  1
           end if
         end do
       end do

   end subroutine ocn_setup_sign_and_index_fields!}}}


!***********************************************************************
!
!  routine mpas_core_setup_packages
!
!> \brief   Pacakge setup routine
!> \author  Doug Jacobsen
!> \date    September 2011
!> \details 
!>  This routine is intended to correctly configure the packages for this MPAS
!>   core. It can use any Fortran logic to properly configure packages, and it
!>   can also make use of any namelist options. All variables in the model are
!>   *not* allocated until after this routine is called.
!
!-----------------------------------------------------------------------
   subroutine mpas_core_setup_packages(ierr)!{{{

      use mpas_packages

      implicit none

      integer, intent(out) :: ierr

      ierr = 0

   end subroutine mpas_core_setup_packages!}}}

end module mpas_core

! vim: foldmethod=marker
