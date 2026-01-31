%Plotting the graph of impulse signal 
%{
Impulse signal = 1 for t =0
               = 0 otherwise
%}

clc
clear all
close all
t = -5:0.01:5; % Time vector from -5 to 5
impulseSignal = (t == 0); % Create impulse signal
subplot(2,1,1)
plot(t, impulseSignal, 'LineWidth', 2); % Plot the impulse signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Approximate Impulse Signal');
grid on;

%{
An ideal impulse has infinite amplitude and zero duration, 
which cannot be represented on a digital computer."
%}

%So,plotting the discrete graph 

n = -5:5; % Time vector from -5 to 5
impulse = (n == 0); % Create impulse signal
subplot(2,1,2)
stem(n, impulse, 'LineWidth', 2); % Plot the impulse signal
xlabel('Time (s)');
ylabel('Amplitude');
title('Discrete Impulse Signal');
grid on;
