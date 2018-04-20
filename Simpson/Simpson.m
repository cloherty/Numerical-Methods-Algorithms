function [I] = Simpson(x,y)
% Simpson's 1/3 Rule + Trapezoidal Rule
%   This function employs Simpson's 1/3 Rule on arrays of input and output
%   function values to determine the magnitude of the function in question.
%   If there is an odd number of intervals, the Trap. Rule will be used to
%   calculate the final interval
n=length(x);
dx=diff(x);
% Preliminary Checks
if nargin~=2
    error('Incorrect number of input variables')
elseif length(x)~=length(y)
    error('Array dimensions must be identical') %Checks x y dimensions are identical
elseif all(dx==dx(1))==0
    error('X must be evenly spaced') %Checks that the space between x points is the same
elseif mod(length(x),2)==1
    disp('Odd number of intervals, Trap will be used. Thanks for making life difficult') %Warns user that trap will be used
end



% Calculate Area for Odd # Intervals, Even # Points
if mod(length(x),2)==0 % determines if there is an odd number of intervals or not
% Determine width of Interval--(b-a) value, as well as x(0) and x(n) values
   w=(x(n-1)-x(1)); % Calculates width multiplier
   y1=y(1); % In the Simpson's formula, this is f(x0) which will be used in final sum
   y4=y(n-1); % In the Simpson's formula, this is f(xn) which will be used in final sum
   
  % Interior Points of Simpson's Composite Odd Indices
  Odds=2:2:(n-1); % creates a vector of the odd valued indices of length of x
  y2=4*sum(y(Odds)); %this is the summation of the function values corresponding to above indices
  
  %Interior Points of Simpson's Composite Even Indices
  Evens=3:2:(n-2); % Creates a vector of the even valued indices for length of x
  y3=2*sum(y(Evens)); % The summation of the function values corresponding to the above indices
  S=w*(y1+y2+y3+y4)/(3*(n-2)); % The total summation of the Simpson component of the area calculation
  
  % Use Trap for Final Interval
 T=((y(n)+y(n-1))*(x(n)-x(n-1)))/2; %Trap formula for final interval
 
 % Sum Trap and Simpson Values 
 I=S+T % Sums Trap and Simpson for total area 
 
 % Calculate Area for Even # Segments, Odd # Points
elseif mod(length(x),2)==1 %Determines if x has an even number of segments
 % Determine width of Interval--(b-a) value, as well as x(0) and x(n) values
   w=(x(n)-x(1)); %Calculates the width that will be used in Simpson formula
   y1=y(1); %f(x0) value, will be summed in the final calculation of area
   y4=y(n); %f(xn) value, will be summed in final area calculation
   
   % Calculate Area for Odd Intervals
   Odds=2:2:(n-1); %Creates a vector of the odd valued indices from x
   y2=4*sum(y(Odds)); %Sums the corresponding function values of the above indices
   
   % Calculate Area for Even Intervals
   Evens=2:2:(n-1); %Creates a vector of the even valued indices from x
   y3=2*sum(y(Evens)); %Sums the corresponding function values of the above indices
   
   % Sum the Simpson's Values
   S=(w*(y1+y2+y3+y4))/(3*(n-1)); %Sums all the function values of the Simpson formula
   I=S %Sets the sum equal to output variable
   
end

