function getCoastCells(coastCellBinary,scale)
delete('coastCells.txt');
fileID = fopen('coastCells.txt', 'a+');
blockproc(coastCellBinary, [scale*2 scale*2], @(block) findLoc(block, fileID));
fclose(fileID);
end

function findLoc(block, fileID)

if (sum(sum(block.data))>0)

fprintf(fileID, '%d,%d\r\n', block.location*(sum(sum(block.data))>0));

end

end