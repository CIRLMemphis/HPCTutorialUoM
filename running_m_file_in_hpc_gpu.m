clear all; close all; clc; 

%% Finding FFT of a large 3D matric in CPU
three_dimensional_matrix = ones(512,512,1024);

tic; ft_cpu = fftn(three_dimensional_matrix); t_cpu = toc

%% Finding FFT of a large 3D matric in GPU
three_dimensional_matrix_gpu = gpuArray(three_dimensional_matrix);

tic; ft_gpu = fftn(three_dimensional_matrix_gpu); t_gpu = toc