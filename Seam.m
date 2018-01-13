clear

load('C:\Users\acer\Desktop\Image Processing\Seam-Carving\Tower.mat')
figure;
level = graythresh(Tower);
img = im2bw(Tower,level);
imshow(img)
figure;
img = im2bw(Tower);
imshow(img)