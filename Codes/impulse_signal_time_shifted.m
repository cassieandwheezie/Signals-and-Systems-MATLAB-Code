%Plotting the graph of impulse signal time shifted version 
%{
Impulse signal = 1 for t = shift_value
               = 0 otherwise
%}

clc
clear all
close all
shift_value = 2;
t = -5:0.01:5; % Time vector from -5 to 5
impulseSignal = (t == shift_value); % Create impulse signal
subplot(2,1,1)
plot(t, impulseSignal, 'LineWidth', 2); % Plot the impulse signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Time Shifted Approximate Impulse Signal');
grid on;

%{
An ideal impulse has infinite amplitude and zero duration, 
which cannot be represented on a digital computer."
%}

%So,plotting the discrete graph 

n = -5:5; % Time vector from -5 to 5
impulse = (n == shift_value); % Create impulse signal
subplot(2,1,2)
stem(n, impulse, 'LineWidth', 2); % Plot the impulse signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Time Shifted Discrete Impulse Signal');
grid on;
