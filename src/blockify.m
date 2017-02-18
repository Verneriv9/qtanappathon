%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function output = blockify(colorSegImage,scale)
%analyzes blocks of 16x16 pixels and changes the block color to the average
%of the colors present. "Lost" pixels at the edges of the image a small and
%negligible, as they are unlikely to be used at all.
meanBlock = @(block_struct) (mean2(block_struct.data)* ones(size(block_struct.data))); 
output = blockproc(colorSegImage, [scale*2 scale*2], meanBlock); 

end
