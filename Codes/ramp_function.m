%Plotting the graph of ramp signal 
%{
r(t) = 0 for t <0
     = t for t> =0
%}

%Mathematically unit ramp function is same as ramp function also
clc
clear 
close all


%Plotting the continuous ramp function 
t =-5:0.01:5;
r = t.*(t>=0); %ramp function 
subplot(2,1,1);
plot(t,r,'LineWidth',2);
xlabel('t(s)');
ylabel('x(t)');
title('Continuous ramp function ');
grid on 


%Plotting the discrete ramp function 
n = -5:5; % discrete time indices
rDiscrete = n.*(n>=0); % discrete ramp function
subplot(2,1,2);
stem(n, rDiscrete, 'LineWidth', 2);
xlabel('n');
ylabel('x[n]');
title('Discrete ramp function');
grid on;

