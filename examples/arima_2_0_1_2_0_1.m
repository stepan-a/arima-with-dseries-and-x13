% Initialization of the endogenous variable to be simulated.
y = dseries([0; 0], '1938Q3', 'y');

% Get random draws from a Gaussian distribution.
e = dseries(randn(201,1),'1938Q4','e');

% Simulate an ARMA(2,1) model
from 1939Q1 to 1988Q4 do y(t) = .8*y(t-1) - .2*y(t-2) + e(t) - .15*e(t-1)

% Declare the ARMA model to be estimated (with X13-CENSUS)
model = arima(y, '(2,0,1)');

% Trigger the estimation of the model
estimate(model);

% Display the estimation results
model