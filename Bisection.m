function [root,fx,ea,iter] = Bisection(funct,xl,xu,es,iter)
% Connor Cloherty MECH 105 2-17-18

%This function uses the bisection method to determine the root of a given
% function that is inputted by the user. NOTE, this function will not work
% if the initial guesses do not contain a root, so be sure to plot before
% hand, and get a decent estimate. 

%Also, the first input of this function is an actual function of x. The
%function will start until a symbolic variable has been allocated for x
%before hand



syms x % Create a symbolic variable for x
func = symfun(funct,x); % Symbolic function for the input

if nargin<=3 % Safety net, if wrong number of inputs,defaults error to .001, and iterations to 200
     es=.001;
    iter=200;
elseif nargin<=4
   iter=200;
elseif nargin<3
       error('Not enough input arguments')
elseif nargin>5
    error('Too many input arguments')
       
end
xrnew = 0; % sets the initial value of xrnew
iter_init = iter; %Sets initial iteration value to the input value
err = 1000; %sets initial error to 1000, and can be reduced from here

while iter > 0 && err>es % Run until iterations get down to zero, and error is less than desired
    xrnew=(xl+xu)/2; % Formula to find midpoint based on xl and xu
    a = func(xrnew)*func(xl); % Finds the product of the functions of xl and xrnew
    if a >0 
        xl=xrnew; %If that product is positive, the new lower bound is the midpoint
    elseif a<0
        xu=xrnew; %If that product is negative, the new upper bound is  the midpoint
    end
iter=iter-1; % counts iterations
err=abs((((xl+xu)/2) - xrnew)/((xl+xu)/2)); %calculates error based on the iteration
end

root = xrnew
ea = err
iter = iter_init - iter
fx = double(func(xrnew))
  
    


