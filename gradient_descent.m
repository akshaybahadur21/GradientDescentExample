data=load('C:\Users\akshaybahadur21\Desktop\GradientDescent\data.csv');
x=data(:,1);
y=data(:,2);
plot(x,y,'rx','MarkerSize',10);
m=length(x);
x=[ones(m,1),data(:,1)];
theta=zeros(2,1);%theta =[0;0]
J=1/(2*m)*(sum(((x*theta)-y).^2)); %calculating cost
alpha=0.0001;
iterations=1000;
J_history = zeros(iterations, 1);
%%Code for Gradient descent
theta = gradientCalculator(x, y, theta, alpha, iterations);
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);

hold on; % keep previous plot visible
plot(x(:,2), x*theta, '-')
