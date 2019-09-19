clear all; close all; clc

parpool(10)                       % Opening 10 matlab workers 

% Finding the RMS value of 1 to 100M 
N = 100000000;                    % 100 Millions number
tic;
parfor i = 1:N   
    b(i) = i.^2;
end
sum_of_square = sqrt(sum(b)/N);   % RMS value of 1:100M
t1 = toc

disp(['RMS = ' num2str(sum_of_square)])
disp(['Execution time = ' num2str(t1) ' s'])

delete(gcp('nocreate'))           % Shutting down the parallel workers