% Rectangular pulse of width T = 2 sec and amplitude = 1
%{
x(t) = 1 , |t| <= T/2
     = 0 , otherwise
%}

clc
clear
close all

T = 2;    
t = -5:0.01:5;              % continuous time axis
x = (abs(t) <= T/2);        % rectangular pulse

subplot(2,1,1)
plot(t, x, 'LineWidth', 2)
xlabel('t (s)')
ylabel('x(t)')
title('Continuous Rectangular Pulse (T = 2 s)')
grid on

n = -5:5;                   % discrete time indices
xD = (abs(n) <= T/2);       % discrete rectangular pulse

subplot(2,1,2)
stem(n, xD, 'LineWidth', 2)
xlabel('n')
ylabel('x[n]')
title('Discrete Rectangular Pulse (T = 2 s)')
grid on
