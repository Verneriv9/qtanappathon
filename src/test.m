function output = test(inputImage)
%eliminates blue elements in the image
output = eliminateblue(inputImage); 
%analyzes blocks of 16x16 pixels and changes the block color to the average
%of the colors present. "Lost" pixels at the edges of the image a small and
%negligible, as they are unlikely to be used at all.
fun = @(block_struct) (mean2(block_struct.data)* ones(size(block_struct.data))); 
output = blockproc(output, [16 16], fun); 

output = imbinarize(output);

%[B,L] = bwboundaries(output,8,'holes');

imshow(output);

%disp(B);
%disp(L);

end