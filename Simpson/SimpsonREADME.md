
## Simpson

4.  This function employs Simpson's 1/3 Rule on arrays of input and output function values to determine the magnitude of the function in question. If there is an odd number of intervals, the Trap. Rule will be used to calculate the final interval.

#### Inputs

- x-array of x values within a data set (independent variable)

- y-array of y values corresponding to x's (dependent variable)

#### Outputs

- I-magnitude, or 'integral' of the function given by the data set

#### Limitations 
- This algorithm uses both the Simpson's 1/3 Rule and Trapezoidal Rule to determine the magnitude of a function given by a series of data points. However, depending on the application, there are other more accurate methods to accomplish this task. The Simpson's 3/8 rule, or Gauss Quadrature are both more accurate means to defining this magnitude.

