%% Linear Convolution of x = [1, 2] and h = [1, 2, 4]
clc; clear; close all;

% --- 1. Define Input Signals ---
x = [1, 2];          
h = [1, 2, 4];       

% --- 2. Define Time Axes ---
nx = 0:length(x)-1;
nh = 0:length(h)-1;

% --- 3. Inbuilt Convolution ---
y_inbuilt = conv(x, h);
% Time axis for output starts at sum of start indices: 0+0=0
ny = 0:(length(y_inbuilt)-1); 

% --- 4. Manual Convolution Program (Safe Logic) ---
Lx = length(x);
Lh = length(h);
y_manual = zeros(1, Lx + Lh - 1);

for i = 1:length(y_manual)     
    for j = 1:Lx                
        k = i - j + 1;          
        if (k > 0) && (k <= Lh)
            y_manual(i) = y_manual(i) + x(j) * h(k);
        end
    end
end

% --- 5. Visualization (4 Axis-Aligned Subplots) ---
figure('Color', 'w', 'Name', 'Linear Convolution Analysis');

% Subplot 1: Input x(n)
subplot(4,1,1);
stem(nx, x, 'filled');
title('Input Signal x(n)');
grid on; xlim([-1 max(ny)+1]);

% Subplot 2: Impulse Response h(n)
subplot(4,1,2);
stem(nh, h, 'filled', 'Color', [0.5 0.5 0.5]);
title('Impulse Response h(n)');
grid on; xlim([-1 max(ny)+1]);

% Subplot 3: Output using conv()
subplot(4,1,3);
stem(ny, y_inbuilt, 'filled', 'b');
title('Output y(n) using inbuilt conv()');
grid on; xlim([-1 max(ny)+1]);

% Subplot 4: Output using Manual Program
subplot(4,1,4);
stem(ny, y_manual, 'filled', 'r');
title('Output y(n) using Manual Program');
xlabel('n');
grid on; xlim([-1 max(ny)+1]);

% --- 6. Terminal Verification ---
disp('Manual Result:'); disp(y_manual);
if isequal(y_inbuilt, y_manual)
    disp('Verification Successful: Manual matches Inbuilt!');
end
