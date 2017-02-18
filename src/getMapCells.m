%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function getMapCells(mapCellBinary,scale)
delete('mapCells.txt');
fileID = fopen('mapCells.txt', 'a+');
blockproc(mapCellBinary, [scale*2 scale*2], @(block) findLoc(block, fileID));
fclose(fileID);
end

function findLoc(block, fileID)

if (sum(sum(block.data))>0)

fprintf(fileID, '%d,%d\r\n', block.location*(sum(sum(block.data))>0));

end

end
