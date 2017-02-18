function output = GUIFileSelect()

[FileName,PathName,~] = uigetfile('*','Select an image file.','../imageinput/');
output = test(strcat(PathName,FileName)); %Test is a temporary function/file and should be replaced with the final operation.
end