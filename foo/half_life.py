import os 
import sys 


def half_life(CL, Vc, Q, Vp):
    """
    Function to calculate \alpha and \beta half-lives

    Arguments:
    CL  : Drug clearance (L/hr) 
    Vc  : Central volume of distribution (L) 
    Q   : Intracompartmental clearance (L/hr)
    Vp  : Peripheral volume of distribution (L) 
    
    Output:

    Output is a dict value with beta half-life and alpha half-life 

    Example:

    >>> half_life.half_life(CL=5, Vc=30, Q=35, Vp=50)
    """

    k12 = Q/Vc
    k21 = Q/Vp 
    k10 = CL/Vc

    beta = 0.5 * ( k12 + k21 + k10 - ((k12+k21+k10)**2 - 4*k21*k10)**0.5)
    alpha = k21 * k10/beta 

    values= {'Beta t0.5': 0.693/beta, 'Alpha t0.5': 0.693/alpha}
    return values 
