%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function output = eliminateblue(inputImage)

RGB = imread(inputImage);

output = HSV1(RGB);

end
