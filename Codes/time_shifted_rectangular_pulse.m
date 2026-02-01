% Time-shifted rectangular pulse of width T = 2 sec and amplitude = 1
%{
x(t - t0) = 1 , |t - t0| <= T/2
          = 0 , otherwise
%}

clc
clear
close all

T = 2;      
t0 = 2;     

t = -5:0.01:5;                      
x = (abs(t - t0) <= T/2);          

subplot(2,1,1)
plot(t, x, 'LineWidth', 2)
xlabel('t (s)')
ylabel('x(t)')
title('Time-shifted Continuous Rectangular Pulse')
grid on

n = -5:5;                           
xD = (abs(n - t0) <= T/2);          % shifted pulse

subplot(2,1,2)
stem(n, xD, 'LineWidth', 2)
xlabel('n')
ylabel('x[n]')
title('Time-shifted Discrete Rectangular Pulse')
grid on
