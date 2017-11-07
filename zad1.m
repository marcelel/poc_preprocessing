close all; clearvars; clc;

%%
Plansza_bmp = imread('plansza.bmp');

H = fspecial('average');

Plansza_conv2 = uint8(conv2(double(Plansza_bmp), H, 'same'));

Diff = imabsdiff(Plansza_bmp, Plansza_conv2);

figure;
subplot(1,3,1); imshow(Plansza_bmp);
subplot(1,3,2); imshow(Plansza_conv2);
subplot(1,3,3); imshow(Diff,[]);

%%
H5 = fspecial('average',5);
H9 = fspecial('average',9);
H15 = fspecial('average',15);
H35 = fspecial('average',35);
Plansza_conv2_5 = uint8(conv2(double(Plansza_bmp), H5, 'same'));
Plansza_conv2_9 = uint8(conv2(double(Plansza_bmp), H9, 'same'));
Plansza_conv2_15 = uint8(conv2(double(Plansza_bmp), H15, 'same'));
Plansza_conv2_35 = uint8(conv2(double(Plansza_bmp), H35, 'same'));

figure
subplot(2,3,1); imshow(Plansza_bmp);
subplot(2,3,2); imshow(Plansza_conv2);
subplot(2,3,3); imshow(Plansza_conv2_5);
subplot(2,3,4); imshow(Plansza_conv2_9);
subplot(2,3,5); imshow(Plansza_conv2_15);
subplot(2,3,6); imshow(Plansza_conv2_35);