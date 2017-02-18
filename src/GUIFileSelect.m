%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function [output] = GUIFileSelect()

[FileName,PathName,~] = uigetfile('*','Select an image file.','../imageinput/');
[output] = test(strcat(PathName,FileName),8); %Test is a temporary function/file and should be replaced with the final operation.

save('data/var','output');

end
