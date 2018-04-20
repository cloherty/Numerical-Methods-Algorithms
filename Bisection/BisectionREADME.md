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

#### Limitations
- While the bisection method will deliver accurate results, it does expend slightly more computational power and time than its 'open method' counterparts. However, if consistency is what is required, bisection will not let you down.
