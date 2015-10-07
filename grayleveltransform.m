%% Negative
f = imread('Fig0304(a)(breast_digital_Xray).tif');
[p,q] = size(f);
m = max(f(:));
z = zeros(p,q);
for i=1:p
    for j=1:q
        z(i,j) = (m - 1 -f(i,j));
    end
end
figure, imshow(f);
% Display and title output.
subplot (1,2,1);
imagesc(f);
title('Input Image');

subplot (1,2,2);
imagesc (z);
title('Output Image');

%% Logarthim transform

f = imread('Fig0305(a)(DFT_no_log).tif');
[p,q] = size(f);
m = max(f(:));
z = zeros(p,q);
f= double(f);
for i=1:p
    for j=1:q
        z(i,j) = 2*log10(2+f(i,j));
    end
end
figure, imshow(f);
% Display and title output.
subplot (1,2,1);
imagesc(f);
title('Input Image');

subplot (1,2,2);
imagesc (z);
title('Output Image');

%% power-Law Transform
f = imread('Fig0309(a)(washed_out_aerial_image).tif');
[p,q] = size(f);
m = max(f(:));
z = zeros(p,q);
y = zeros(p,q);
w = zeros(p,q);
f= double(f);
for i=1:p
    for j=1:q
        z(i,j) = f(i,j)^(3);
        y(i,j) = f(i,j)^(7);
        w(i,j) = f(i,j)^(5);
    end
end
figure, imshow(f);
% Display and title output.
subplot (2,2,1);
imagesc(f);
title('Input Image');

subplot (2,2,2);
imagesc (z);
title('Output Image');

subplot (2,2,3);
imagesc (y);
title('Output Image');

subplot (2,2,4);
imagesc (w);
title('Output Image');
