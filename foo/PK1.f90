!-----------------------------------------------------------------------------------!
!
! Program: Simulate One-compartment model with first-order absorption and first-
! 	   order elimination
!
! Author: Mutaz M. Jaber 
!
! LICENSE: MIT 
!-----------------------------------------------------------------------------------! 

program one_comp
  implicit none
  ! define values
  real :: CL, V, KA, KE
  integer :: DOSE,t,i
  real, dimension(10) :: time

  ! Size must match time array 

  real, dimension(SIZE(time)) :: CONC

  time = (/ 0.0, 0.5, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 8.0, 12.0 /)
  DOSE = 120 
  CL = 8
  V  = 25
  KA = 1.5 
  KE = CL/V
  print *, "Size of time", SIZE(time) 
  do t=1,SIZE(time)
     CONC(t) = DOSE*KA/V/(KA - KE) * (exp(-KE * time(t)) - exp(-KA * time(t)))
     print *, "Concentration at time ", time(t), "is: ", CONC(t) 
  end do

  open(10, file="PK1.txt", status = "new")
  write(10, *) "TIME",',', "CONC"
  do i=1,SIZE(CONC)
     write(10, "(F10.4,',',F10.4)") time(i), CONC(i)
  end do
  close(10) 
  end program one_comp
  
