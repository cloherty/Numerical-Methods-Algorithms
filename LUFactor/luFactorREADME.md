## luFactor

3.This algorithm uses the LU Decomposition method to break down a coefficient matrix of A into its lower and upper triangular matrices. These matrices can then be used infinitely to solve other systems of equations with the same coefficients, even if the outputs are changed.

#### Inputs

- A-initial coefficient matrix from given system

#### Outputs

- L-lower triangular matrix

- U-upper triangular matrix

- P-pivot matrix

#### Limitations
- This particular code is only written to decompose 3x3 and 2x2 matrices. Anything of a higher magnitude will be responded with an error. More complex systems can be solved with the 'lu' function in MATLAB.

