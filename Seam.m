clear

image = imread('C:\Users\acer\Desktop\Image Processing\Seam-Carving\sample.jpg');
horizontal = input('Enter Number of Horizontal Seams to remove : ');
vertical = input('Enter Number of Vertical Seams to remove : ');
%imshow(image)
img = image;
sz = size(image);
if (vertical < sz(2)) && (horizontal < sz(1))
    
    for k = 1:vertical
        dp = dp_generator(img);
        img= processing(dp, img);
    end

    img = rot90(img);
    for k = 1:horizontal
        dp = dp_generator(img);
        img = processing(dp, img);
    end
    img = rot90(img,3);
    figure;
    imshow(img);
else
    disp('Invalid Input');
end