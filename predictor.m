% Predict the next output value of the ARMA process given delayed y values,
% input u and ARMA coefficient vector theta
function [y] = predictor(y_1, y_2, u, theta)
    y = theta(1,1) * y_1 + theta(2, 1) * y_2 + theta(3,1) * u;