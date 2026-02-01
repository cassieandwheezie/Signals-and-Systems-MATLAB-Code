%Plotting the graph of ramp signal ttime shifted 
%{
r(t) = 0 for t <shift_value
     = t-shift_value for t> =shift_value
%}
%Version with positive shift 

clc
clear 
close all


%Plotting the continuous ramp function 
t =-5:0.01:5;
shift_value = 2;
r = (t - shift_value) .* (t >= shift_value);
subplot(2,1,1);
plot(t,r,'LineWidth',2);
xlabel('t(s)');
ylabel('x(t)');
title('Time shifted Continuous ramp function ');
grid on 


%Plotting the discrete ramp function 
n = -5:5; % discrete time indices
rDiscrete = (n - shift_value) .* (n >= shift_value);
subplot(2,1,2);
stem(n, rDiscrete, 'LineWidth', 2);
xlabel('n');
ylabel('x[n]');
title('Time shifted Discrete ramp function');
grid on;


