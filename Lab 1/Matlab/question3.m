image = imread('../ee3tp3picture2020.png');
image_of_doubles = double(image);
num_bins = 20;

%% Histogram
image_hist = figure('Name','Question 3a');
[n_elements, centers] = hist(image_of_doubles(:), num_bins);
bar(centers, n_elements);
title('Raeed Hassan');
xlim([0 255]);
exportgraphics(image_hist,'..\Figures\question3a.png');

%% Display original image
original_image = figure('Name','Question 3b');
imshow(uint8(image_of_doubles));
imwrite(uint8(image_of_doubles),'..\Figures\question3b.png');

%% Improved image
improved_image = image_of_doubles*(255/28) - 159*(255/28);

%% Improved histogram
image_hist = figure('Name','Question 3d');
[n_elements, centers] = hist(improved_image(:), num_bins);
bar(centers, n_elements);
title('Raeed Hassan');
xlim([0 255]);
exportgraphics(image_hist,'..\Figures\question3d.png');

%% Display improved image
improved_image_fig = figure('Name','Question 3e');
imshow(uint8(improved_image));
imwrite(uint8(improved_image),'..\Figures\question3e.png');