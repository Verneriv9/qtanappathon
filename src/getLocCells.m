function output = getLocCells(mapCellBinary)

maskedBlock = @(block_struct) blockEdgeMasker(block_struct.data).*(block_struct.location); 
partialMask = blockproc(mapCellBinary, [16 16], maskedBlock);

end

function finalMask = blockEdgeMasker(blockData)

blockMask = max(blockData(:));

finalMask = blockMask.*(ones(size(blockData)));

end