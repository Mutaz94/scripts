!--------------------------------------------------------------------------
!
!       Program: Generate normal distribution using random number
!                generator 
!
!       Author : Mutaz M. Jaber 
!
!--------------------------------------------------------------------------

subroutine random_normal(x, mu, std)
    implicit none 

    ! Define values 
    real, intent(out) :: x
    real, intent(out) :: mu, std
    real, parameter :: pi=3.14159265
    real :: n
    ! Call internsit random_number(x) value 

    call random_number(n) 

    x = n * std + mu 
    return 
    end subroutine random_normal 

program generate 
    implicit none 

    external random_normal  

    print *, call random_normal(1, 5, 0.3) 

    end program generate 
