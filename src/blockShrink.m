function output = blockShrink(finalBinaryMap,scale)
%analyzes 16x16 pixel blocks and shrinks them down to 1 pixel each,
%so that they can be analyze for boundary location properly.
meanShrink = @(block_struct) (mean2(block_struct.data)); 
output = blockproc(finalBinaryMap, [scale*2 scale*2], meanShrink); 

end