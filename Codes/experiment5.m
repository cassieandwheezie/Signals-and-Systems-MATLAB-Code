clc; clear; close all;

% 1. Define active pulse (Length 6)
x = ones(1, 6); 
h = x; 
n_x = 0:5;

% 2. Inbuilt
y_inbuilt = conv(x, h);
n_y = 0:(length(y_inbuilt)-1);

% 3. Manual Logic (Safe & Easy)
Lx = length(x); Lh = length(h);
y_manual = zeros(1, Lx + Lh - 1);
for i = 1:length(y_manual)
    for j = 1:Lx
        k = i - j + 1;
        if (k > 0) && (k <= Lh)
            y_manual(i) = y_manual(i) + x(j) * h(k);
        end
    end
end

% 4. Plot (Combined for verification)
subplot(2,1,1); stem(n_x, x, 'filled'); title('Input x(n)'); grid on;
subplot(2,1,2); stem(n_y, y_inbuilt, 'filled', 'b'); hold on;
stem(n_y, y_manual, 'rx'); title('Output y(n): Inbuilt vs Manual');
legend('conv()', 'Manual'); grid on;
