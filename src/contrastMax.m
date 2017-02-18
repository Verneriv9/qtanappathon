function output = contrastMax(blockifiedImage)

%binarizes the image by converting grayscale to binary using adaptive
%thresholding, such that the contrast is essentially maximized to the
%black and white extremes.
output = imbinarize(blockifiedImage);

end