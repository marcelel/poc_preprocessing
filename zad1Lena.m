%%
Lena_bmp = imread('lena.bmp');

H = fspecial('average');

Lena_conv2 = uint8(conv2(double(Lena_bmp), H, 'same'));

Diff = imabsdiff(Lena_bmp, Lena_conv2);

figure;
subplot(1,3,1); imshow(Lena_bmp);
subplot(1,3,2); imshow(Lena_conv2);
subplot(1,3,3); imshow(Diff,[]);

%%
H5 = fspecial('average',5);
H9 = fspecial('average',9);
H15 = fspecial('average',15);
H35 = fspecial('average',35);
Lena_conv2_5 = uint8(conv2(double(Lena_bmp), H5, 'same'));
Lena_conv2_9 = uint8(conv2(double(Lena_bmp), H9, 'same'));
Lena_conv2_15 = uint8(conv2(double(Lena_bmp), H15, 'same'));
Lena_conv2_35 = uint8(conv2(double(Lena_bmp), H35, 'same'));

figure
subplot(2,3,1); imshow(Lena_bmp);
subplot(2,3,2); imshow(Lena_conv2);
subplot(2,3,3); imshow(Lena_conv2_5);
subplot(2,3,4); imshow(Lena_conv2_9);
subplot(2,3,5); imshow(Lena_conv2_15);
subplot(2,3,6); imshow(Lena_conv2_35);

%%
M = [1 2 1; 2 4 2; 1 2 1];
M = M/sum(sum(M));

Lena_conv2_M = uint8(conv2(double(Lena_bmp), M, 'same'));

Diff = imabsdiff(Lena_bmp, Lena_conv2_M);

figure;
subplot(1,3,1); imshow(Lena_bmp);
subplot(1,3,2); imshow(Lena_conv2_M);
subplot(1,3,3); imshow(Diff,[]);

%%
H_gaussian_02 = fspecial('gaussian',5,0.2);
H_gaussian_05 = fspecial('gaussian',5,0.5);
H_gaussian_08 = fspecial('gaussian',5,0.8);

Lena_conv2_gaussian_02 = uint8(conv2(double(Lena_bmp), M, 'same'));
Lena_conv2_gaussian_05 = uint8(conv2(double(Lena_bmp), M, 'same'));
Lena_conv2_gaussian_08 = uint8(conv2(double(Lena_bmp), M, 'same'));

figure;
subplot(2,3,1); imshow(Lena_conv2_gaussian_02);
subplot(2,3,2); imshow(Lena_conv2_gaussian_05);
subplot(2,3,3); imshow(Lena_conv2_gaussian_08);
subplot(2,3,4); mesh(H_gaussian_02);
subplot(2,3,5); mesh(H_gaussian_05);
subplot(2,3,6); mesh(H_gaussian_08);


