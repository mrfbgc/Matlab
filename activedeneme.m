clc;
clear all; 

r=imread("rice.png"); 

mask = zeros(size(r));
mask(25:end-25,25:end-25) = 1;
bw = activecontour(r,mask,600);

figure;
subplot(1,2,1); imshow(r); title('orijinal imge');

subplot(1,2,2); imshow(bw); title('600 iterasyon sonrası bölütlenmiş görüntü');
