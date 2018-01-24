clear

image = imread('C:\Users\acer\Desktop\Image Processing\Seam-Carving\sample.jpg');

%imshow(image)
img = image;
for k = 1:400
    dp = dp_generator(img);
    img = processing(dp, img);
end
imshow(image);
figure;
imshow(img);