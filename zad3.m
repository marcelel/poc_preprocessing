close all; clearvars; clc;

%%
Moon = imread('moon.tif');

M = [0 1 0; 1 -4 1; 0 1 0];
M = M/9;
Moon_conv2 = uint8(conv2(double(Moon), M, 'same'));
Moon_scal = Moon_conv2 + 128;
Moon_abs = abs(Moon_conv2);
L = fspecial('laplacian');
Moon_laplacian = uint8(conv2(double(Moon), double(L), 'same'));

figure;
subplot(2,2,1); imshow(Moon, []); title('original');
subplot(2,2,2); imshow(Moon_scal, []); title('skalowanie');
subplot(2,2,3); imshow(Moon_abs, []);, title('modul');
subplot(2,2,4); imshow(Moon_laplacian + Moon, []);, title('laplacian');