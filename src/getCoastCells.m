%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function getCoastCells(coastCellBinary,scale)
delete('coastCells.txt');
fileID = fopen('coastCells.txt', 'a+');
%look at each 16x16 representation of a map grid element
blockproc(coastCellBinary, [scale*2 scale*2], @(block) findLoc(block, fileID));
fclose(fileID);
end

function findLoc(block, fileID)
%if the mapCell contains info, write its location to file
if (sum(sum(block.data))>0)
%lower condition might be redundant
fprintf(fileID, '%d,%d\r\n', block.location*(sum(sum(block.data))>0));

end

end
