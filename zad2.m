close all; clearvars; clc;

%%
LenaSzum_bmp = imread('lenaSzum.bmp');

H = fspecial('average');

LenaSzum_conv2 = medfilt2(LenaSzum_bmp);

Diff = imabsdiff(LenaSzum_bmp, LenaSzum_conv2);

figure;
subplot(1,3,1); imshow(LenaSzum_bmp);
subplot(1,3,2); imshow(LenaSzum_conv2);
subplot(1,3,3); imshow(Diff,[]);