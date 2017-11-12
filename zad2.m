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

%%
Lena_bmp = imread('lena.bmp');
H = fspecial('average');

Lena_conv2 = uint8(conv2(double(Lena_bmp), H, 'same'));
Diff_conv2 = imabsdiff(Lena_bmp, Lena_conv2);

Lena_medfilt2 = medfilt2(Lena_bmp);
Diff_medfilt2 = imabsdiff(Lena_bmp, Lena_medfilt2);

figure;
subplot(2,3,1); imshow(Lena_bmp); title('Original');
subplot(2,3,2); imshow(Lena_conv2); title('Usredniajaca');
subplot(2,3,3); imshow(Diff_conv2,[]); title('Diff');
subplot(2,3,4); imshow(Lena_bmp); title('Original');
subplot(2,3,5); imshow(Lena_medfilt2); title('Medianowa');
subplot(2,3,6); imshow(Diff_medfilt2,[]); title('Diff');

%%
Lena_bmp = imread('lena.bmp');
Lena_medfilt2 = medfilt2(Lena_bmp);

for i = 0:10 
    Lena_medfilt2 = medfilt2(Lena_medfilt2);
end

Diff_medfilt2 = imabsdiff(Lena_bmp, Lena_medfilt2);

figure;
subplot(1,3,1); imshow(Lena_bmp);
subplot(1,3,2); imshow(Lena_medfilt2);
subplot(1,3,3); imshow(Diff_medfilt2,[]);

%%