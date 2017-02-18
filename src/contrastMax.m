%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function output = contrastMax(blockifiedImage)

%binarizes the image by converting grayscale to binary using adaptive
%thresholding, such that the contrast is essentially maximized to the
%black and white extremes.
output = imbinarize(blockifiedImage);

end
