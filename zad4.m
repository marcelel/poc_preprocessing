close all; clearvars; clc;

Kw = imread('kw.bmp');
load maskiPP;  

%%
Kw_conv2 = uint8(conv2(double(Kw), R1, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

Kw_conv2 = uint8(conv2(double(Kw), R2, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

Kw_conv2 = uint8(conv2(double(Kw), P1, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

Kw_conv2 = uint8(conv2(double(Kw), P2, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

Kw_conv2 = uint8(conv2(double(Kw), S1, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

Kw_conv2 = uint8(conv2(double(Kw), S2, 'same'));
Kw_scal = Kw_conv2 + 128;
Kw_abs = abs(Kw_conv2);

figure;
subplot(3,1,1); imshow(Kw, []); title('original');
subplot(3,1,2); imshow(Kw_scal, []); title('skalowanie');
subplot(3,1,3); imshow(Kw_abs, []);, title('modul');

%%
OS1 = conv2(double(Kw), S1, 'same');
OS2 = conv2(double(Kw), S2, 'same');
OW = sqrt((OS1 .^ 2) + (OS2 .^ 2));
figure;
subplot(2,1,1); imshow(Kw);
subplot(2,1,2); imshow(OW, []);

OS1 = conv2(double(Kw), S1, 'same');
OS2 = conv2(double(Kw), S2, 'same');
OW = sqrt(abs(OS1) + abs(OS2));
figure;
subplot(2,1,1); imshow(Kw);
subplot(2,1,2); imshow(OW, []);

Jet = imread('jet.bmp');

OS1 = conv2(double(Jet), S1, 'same');
OS2 = conv2(double(Jet), S2, 'same');
OW = sqrt((OS1 .^ 2) + (OS2 .^ 2));
figure;
subplot(2, 1, 1); imshow(Jet);
subplot(2, 1, 2); imshow(OW, []);

OS1 = conv2(double(Jet), S1, 'same');
OS2 = conv2(double(Jet), S2, 'same');
OW = sqrt(abs(OS1) + abs(OS2));
figure;
subplot(2, 1, 1); imshow(Jet);
subplot(2, 1, 2); imshow(OW, [])