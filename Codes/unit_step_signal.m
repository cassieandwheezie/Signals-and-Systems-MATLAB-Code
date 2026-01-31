% Plotting the graph of unit step function 
%{ u(t) = 1 for t>0 
       %   0 otherwise
 %}

clc
clear all
close all
t = -5:0.001:5; % Time vector from -10 to 10
%0.001 tells everytim time will be incremented by 0.001
u = t >= 0; % Unit step function
subplot(2,1,1)
plot(t, u, 'LineWidth', 2);% Plot the unit step function
xlabel('Time (s)');
ylabel('u(t)');
title('Continuous Unit Step Function');
grid on;

%the above plot is continuous signal 

%Let us plot the discrete signal now 
%We use the keyword stem to plot the discrete values
n = -5:5;
u_n = n>=0;
subplot(2,1,2);
stem(n, u_n, 'LineWidth', 2);
xlabel('n (samples)');
ylabel('u[n]');
title('Discrete Unit Step Function');
grid on;

