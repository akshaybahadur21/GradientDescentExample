function [theta, J_history] = gradientCalculator(x, y, theta, alpha, iterations)

m = length(y); % number of training examples
J_history = zeros(iterations, 1);
for i = 1:iterations
     dell=(1/m)*((x*theta-y)' * x)';
    theta = theta - (alpha * dell);   
    J_history(i) = 1/(2*m)*(sum(((x*theta)-y).^2));%%computing cost simultaneously
    
end