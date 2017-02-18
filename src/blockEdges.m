%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function output = blockEdges(finalBinaryMap,scale)

%find the border of the coastlines
partialEdgeMask = partialBlockEdge(finalBinaryMap,scale);
%find the border of the border, for centering purposes
partialEdgeMask = partialBlockEdge(partialEdgeMask,scale);
%this masks out the improper water-inhabited border
%by using an element-wise multiplication of the coastline
%psuedo-border and the actual finalBinaryMap that represents the
%landmass. This multiplies the "1" values in the landmass map by
%the "1" values in the border map to ensure that the landmass
%coastline is preserved. The improper water-inhabited borders
%(with value "1") are masked out by being multiplied by the 
%"0" values in the finalBinaryMap representation of the actual
%water-inhabited areas.
output = partialEdgeMask.*finalBinaryMap;

end


function partialMask = partialBlockEdge(finalBinaryMap,scale)
%analyzes 8x8 pixel blocks and traces edges for boundaries,
%then makes a line with radius 8px (16x16 blocks, basically)
%and draws it over the EXACT line of the border.
%This function will be called twice in order to create a border
%of the border, essentially drawing the same cells that represent
%the coastline, but also creating an improper external border in
%the water-inhabited areas. We will mask out the improper border
%after two calls of this function, in the main blockEdges function.
maskedFinalMap = boundarymask(finalBinaryMap);
blockMaskAfterNormalMask = @blockEdgeMasker;
maskedBlock = @(block_struct) blockMaskAfterNormalMask(block_struct.data); 
partialMask = blockproc(maskedFinalMap, [scale scale], maskedBlock); 

end

function finalMask = blockEdgeMasker(blockData)

blockMask = max(blockData(:));

finalMask = blockMask.*(ones(size(blockData)));

end
