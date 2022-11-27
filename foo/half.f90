! program to calculate two-compartment model
! half-life
!
subroutine calc_half_life(cl, v, q, vp, a, b)
  implicit none
  real, intent(in) :: cl, v, q, vp
  real, intent(out) :: a, b
  real :: k10, k12, k21
  k10 = cl/v
  k12 = q/v
  k21 = q/vp
  b = 0.5 * ( k12 + k21 + k10 -((k12  + k21 + k10)**2 - 4 * k21 * k10)**0.5)
  a = k21 * k10/b

end subroutine calc_half_life


program half_life_calc
  implicit none

  real :: cl, v, q, vp, a, b

  print *, "Enter PK parameter values ..."
  print *, "CL :"
  read(*,*) cl
  print *, "V :"
  read(*,*) v
  print *, "Q :"
  read(*,*) q
  print *, "Vp :"
  read(*,*) vp

  call calc_half_life(cl, v, q, vp, a, b)
  PRINT *, "--------------------------------------"
  PRINT *, ""
  print *, "   Beta half life = ", 0.693/b
  print *, "   Alpha half life = ", 0.693/a
  PRINT *, ""
  PRINT *, "--------------------------------------"
  print *, x_test(cl) 

  ! define function 
  contains 
      real function x_test(par)
          implicit none 
          real :: par 
          x_test = par 
      end function x_test 


end program half_life_calc
