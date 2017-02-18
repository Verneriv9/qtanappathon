function output = eliminateblue(inputImage)

RGB = imread(inputImage);

output = HSV1(RGB);

end