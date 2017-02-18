%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function [output] = test(inputImage,scale)
%eliminates blue elements in the image
output = eliminateblue(inputImage); 

%make the image more "blocky"
output = blockify(output,scale);
%turn up the contrast; we want a binary-only image
output = contrastMax(output);
csvwrite('mapCells.dat',output);
imshow(output);

edgemask = blockEdges(output,scale);

getMapCells(output,scale);

getCoastCells(edgemask,scale);

input('wait');

imshow(edgemask);

end
