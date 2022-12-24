clc;
clear all;

r=imread("dog.png");
rbw=rgb2gray(r);
seedpointR = 190;
seedpointC = 99;

W = graydiffweight(rbw, seedpointC, seedpointR,'GrayDifferenceCutoff',40);

thresh = 0.0150;
BW = imsegfmm(W, seedpointC, seedpointR, thresh);
figure;
subplot(1,3,1); imshow(r); title('Orjinal resim RGB');
subplot(1,3,2); imshow(rbw); title("gri ton  resim");
subplot(1,3,3); imshow(BW); title("bölütlenmiş resim");
