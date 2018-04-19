# Numerical-Methods-Algorithms
Each of these methods have a different application to a wide variety of engineering problems. A brief summary is given here, more detailed explanations can be found in the explanation section of the functions.
## falsePosition
1. This algorithim uses the false position method to determine the roots of any given function within a desired error, and with a certain number of iterations as specified by the user
#### Inputs
- func-function being integrated  
- xl-lower guess of root
- xu-upper guess of root
- es-desired relative error
- maxiter-maximum number of iterations performed
#### Outputs
- root-estimated location of root
- fx-function value at root
- ea-approximate relative error
- iter-number of iterations performed


## Bisection 
2. This algorithm uses the bracketing method known as bisection to determine the root of a given function within a certain error bound and number of iterations as specified by the user.
#### Inputs
- func-function being integrated  
- xl-lower guess of root
- xu-upper guess of root
- es-desired relative error
- maxiter-maximum number of iterations performed
#### Outputs
- root-estimated location of root
- fx-function value at root
- ea-approximate relative error
- iter-number of iterations performed


## luFactor
3. This algorithm uses the LU Decomposition method to break down a coefficient matrix of A into its lower and upper triangular matrices. These matrices can then be used infinitely to solve other systems of equations with the same coefficients, even if the outputs are changed.
#### Inputs
- A-initial coefficient matrix from given system
#### Outputs
- L-lower triangular matrix
- U-upper triangular matrix
- P-pivot matrix


## Simpson
4.  This function employs Simpson's 1/3 Rule on arrays of input and output function values to determine the magnitude of the function in question. If there is an odd number of intervals, the Trap. Rule will be used to calculate the final interval.
#### Inputs
- x-array of x values within a data set (independent variable)
- y-array of y values corresponding to x's (dependent variable)
#### Outputs
- I-magnitude, or 'integral' of the function given by the data set

# Summary
- Each of these algorithms uses different numerical methods, or combinations thereof, to meet a certain goaldetermined by the user. These codes were written in MATLAB and use basic if/for/while statements in multiple applications to reach their purpose.
