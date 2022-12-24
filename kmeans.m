clc;
clear all;

r=imread("sea.jpeg");

[L,Centers] = imsegkmeans(r,10);

J = label2rgb(L,im2double(Centers));
B = labeloverlay(r,L);
figure;
subplot(1,3,1); imshow(r); title("orijinal resim");
subplot(1,3,2); imshow(B); title("bölütlenmiş etiketlenmiş resim");
subplot(1,3,3); imshow(J); title("renk nicellendirilmiş resim");

