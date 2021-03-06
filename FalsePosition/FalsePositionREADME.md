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

#### Limitations
- Similar to the bracketing method, the false position algorithm requires an objectively larger amount of computation time and power. However, it is much less susceptible to inaccurate results like than open root finding methods are.
